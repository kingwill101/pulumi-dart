# External secrets adapter for Pulumi ESC on AWS Lambda (Dart)

This example deploys:

- A Node.js Lambda function packaged from `./lambda/adapter`
- An API Gateway `POST /` route to invoke the adapter
- Stack outputs for adapter URL, function name, and function ARN

## Prerequisites

- Dart SDK
- Pulumi CLI
- AWS credentials configured for Pulumi

## Deploying the adapter

1. Install dependencies:

```bash
dart pub get
```

2. Create a new stack:

```bash
pulumi stack init dev
```

3. Configure your AWS region:

```bash
pulumi config set aws:region us-west-2
```

4. Deploy:

```bash
pulumi up
```

5. Copy the adapter URL:

```bash
export ADAPTER_URL=$(pulumi stack output adapterUrl)
```

## Using with Pulumi ESC

```yaml
values:
  demo:
    fn::open::external:
      url: https://YOUR-API-ID.execute-api.us-west-2.amazonaws.com/stage/
      request:
        message: "Hello from ESC!"
```

The bundled handler validates the presence of a Bearer token and returns a JSON payload echo.

## Clean up

```bash
pulumi destroy
pulumi stack rm dev
```
