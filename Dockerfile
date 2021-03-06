# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.6.9

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# Install bash and create root directory for our project in the container
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN mkdir /worldofsports

# Set the working directory to /worldofsports
WORKDIR /worldofsports

# Copy the current directory contents into the container at /worldofsports
ADD . /worldofsports/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt