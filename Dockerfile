# Set the base image
FROM node:alpine

# File Author / Maintainer
MAINTAINER Vilius Simonaitis

# Copy the application folder inside the container
ADD . /http_to_mqtt

# Set environment prameters
ENV AUTH_KEY=912ec803b2ce49e4a541068d495ab570
ENV MQTT_HOST=mqtts://localhost:1883
ENV MQTT_USER=user
ENV MQTT_PASS=pass

# Expose ports
EXPOSE 5000

# Set the default directory where CMD will execute
WORKDIR /http_to_mqtt

RUN npm install --production

# Set the default command to execute 
CMD node index.js 

