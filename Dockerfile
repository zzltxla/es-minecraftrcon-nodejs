FROM node:22.15-alpine3.21

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci

COPY . .    

RUN npm run build

CMD ["node", "/app/build/index.js"]

