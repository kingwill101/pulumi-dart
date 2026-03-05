# Remote Deployment (Dart)

This example ports the upstream Go remote deployment Automation API example to
Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/remote_deployment/`

## What it demonstrates

- Running Pulumi programs remotely with Pulumi Deployments.
- Creating/selecting a remote stack from a Git source repository.
- Supplying remote environment variables, including secrets, for AWS
  credentials.

## Requirements

- Pulumi CLI logged in to Pulumi service.
- AWS credentials in environment variables:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_SESSION_TOKEN` (optional depending on auth flow)

## Run

```bash
cd examples/automation/remote-deployment
dart run bin/main.dart <pulumi-org-or-username>
```

Destroy:

```bash
dart run bin/main.dart <pulumi-org-or-username> destroy
```

