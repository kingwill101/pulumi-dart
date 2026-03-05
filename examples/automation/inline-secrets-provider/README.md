# Inline Secrets Provider (Dart)

This example ports the upstream Go inline custom-secrets-provider Automation API
example to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/inline_secrets_provider/`

## What it demonstrates

- Inline Automation API stack orchestration with `createOrSelectInlineStack`.
- Custom stack secrets provider using AWS KMS (`awskms://...`).
- Persisting project backend and stack secrets provider settings for reuse.

## Required environment

- `AWS_REGION`
- `KMS_KEY` (KMS key id/arn used to build `awskms://...` URI)

## Run

```bash
cd examples/automation/inline-secrets-provider
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

