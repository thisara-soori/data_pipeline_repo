ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER
MAINTAINER thisarasooriyarachchi@gmail.com

RUN pip install boto3
RUN pip install runipy
WORKDIR /work

COPY hello.txt ./
COPY test_jupyter.ipynb ./
EXPOSE 8888
CMD ["runipy", "test_jupyter.ipynb"]
