# Google Cloud Functions in Python, Go, and TypeScript Deployed with Dart

This example deploys three Google Cloud Functions:

- Python function from `pythonfunc/`
- Go function from `gofunc/`
- TypeScript function from `typescriptfunc/`

It uses a shared storage bucket and IAM bindings so each function is publicly invokable.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).
- Function source folders are present under this example.

## Configuration

- `gcp:project` (recommended)
- `gcp:region` (recommended for provider defaults)

## Run

```bash
# Install dependencies and initialize stack
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:region <YOUR_GCP_REGION>

# Deploy
pulumi up
```

Validate deployment:

```bash
curl "$(pulumi stack output pythonEndpoint)"
curl "$(pulumi stack output goEndpoint)"
curl "$(pulumi stack output tsEndpoint)"
```

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
