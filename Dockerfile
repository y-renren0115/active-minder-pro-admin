# ベースイメージの指定
FROM node:18.17.0

# ワーキングディレクトリの設定
WORKDIR /app

# アプリケーションの依存関係のインストール
COPY ./package.json ./
RUN npm cache clean --force
RUN npm install

# アプリケーションのソースをコピー
COPY . .

# ビルドの実行
RUN npm run build

# アプリケーションの起動
CMD ["npm", "start"]