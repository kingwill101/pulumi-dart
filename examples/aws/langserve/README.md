# AWS Dart LangServe Example

This is a Dart translation of:
https://github.com/kingwill101/pulumi-dart/tree/master/pulumi_examples/aws-py-langserve

## Prerequisites

1. Install Pulumi.
2. Configure AWS credentials.
3. Install Docker.
4. Install Dart SDK.

## Deploy

```bash
cd examples/aws/langserve
pulumi stack init dev
pulumi config set open-api-key --secret
pulumi up
```

The stack exports `url` for the load balancer endpoint.

## Cleanup

```bash
pulumi destroy
```
