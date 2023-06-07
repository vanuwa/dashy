docker-image:
	docker build -t dashy-local .

docker-run:
	docker run -d -p 8080:80 -v ./public/conf.yml:/app/public/conf.yml --name dashy-local --restart=always dashy-local

docker-stop:
	docker stop dashy-local
