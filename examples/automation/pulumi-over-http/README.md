# Pulumi Over HTTP (Dart)

This example ports the upstream Go `pulumi_over_http` Automation API example to
Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/pulumi_over_http/`

## What it demonstrates

- Running Automation API inside an HTTP server.
- Exposing infrastructure CRUD over REST endpoints:
  - `POST /sites`
  - `GET /sites`
  - `GET /sites/{id}`
  - `PUT /sites/{id}`
  - `DELETE /sites/{id}`
- Mapping structured Automation API errors to HTTP status codes:
  - `404` for missing stack
  - `409` for stack already exists / concurrent update

## Run

```bash
cd examples/automation/pulumi-over-http
dart run bin/main.dart
```

By default, the server listens on `:1337`.

## Example requests

```bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"id":"hello","content":"hello world\n"}' \
  http://localhost:1337/sites

curl http://localhost:1337/sites

curl --header "Content-Type: application/json" \
  --request PUT \
  --data '{"content":"hello updated world!\n"}' \
  http://localhost:1337/sites/hello

curl --request DELETE http://localhost:1337/sites/hello
```

