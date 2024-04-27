FROM node:18-alpine
LABEL authors="lostsunset"

WORKDIR /vue-app

copy package*.json .
RUN npm install

COPY . .
EXPOSE 8080

CMD ["npm", "run", "dev"]