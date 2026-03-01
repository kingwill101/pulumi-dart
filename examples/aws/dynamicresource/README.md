# Pulumi Dart Dynamic Resource Example

This is a Dart translation of:
https://github.com/kingwill101/pulumi-dart/tree/master/pulumi_examples/aws-py-dynamicresource

## Prerequisites

1. Install Pulumi.
2. Configure AWS credentials.
3. Install Dart SDK.

## Configuration

```bash
pulumi config set aws:region us-west-2
pulumi config set sql-admin-name <NAME>
pulumi config set sql-admin-password <PASSWORD> --secret
pulumi config set sql-user-name <NAME>
pulumi config set sql-user-password <PASSWORD> --secret
```

## Deploy

```bash
cd examples/aws/dynamicresource
pulumi stack init dev
pulumi up
```

## Cleanup

```bash
pulumi destroy
```
