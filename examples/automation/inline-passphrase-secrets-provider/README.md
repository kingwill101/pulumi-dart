# Inline Passphrase Secrets Provider (Dart)

This example ports the upstream Go inline passphrase-secrets-provider
Automation API example to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/inline_passphrase_secrets_provider/`

## What it demonstrates

- Inline Automation API stack orchestration with `createOrSelectInlineStack`.
- Passphrase-based stack secrets provider.
- Persisting project backend and stack secrets provider settings for reuse.

## Required environment

- `PULUMI_CONFIG_PASSPHRASE` (optional; defaults to `password` for demo)
- `AWS_REGION` (optional; defaults to `us-east-1`)

## Run

```bash
cd examples/automation/inline-passphrase-secrets-provider
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

