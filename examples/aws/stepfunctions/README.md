# AWS Step Functions (Dart)

A basic example that demonstrates using AWS Step Functions with two Lambda functions.

## Deploy

```bash
dart pub get
pulumi up
```

## Execute

```bash
aws stepfunctions start-execution --state-machine-arn $(pulumi stack output stateMachineArn)
```

## Destroy

```bash
pulumi destroy
```
