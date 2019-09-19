FROM python:3.6.4-alpine3.7

ENV LANG C.UTF-8

COPY packages/twistcli /usr/local/bin/twistcli

RUN apk update
RUN apk upgrade
RUN apk add --no-cache \
        docker \
        git \
        nodejs
RUN pip install requests
RUN npm install codefresh -g 
RUN chmod +x /usr/local/bin/twistcli

COPY script/twistlock-cli.py /twistlock-cli.py

CMD [""]
