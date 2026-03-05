# Inline Program (Dart)

This example ports the upstream Go Automation API inline example to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/inline_program/`

## What it demonstrates

- Creating/selecting stacks with `LocalWorkspace.createOrSelectInlineStack`.
- Running lifecycle operations from code: `refresh`, `up`, and `destroy`.
- Reading stack outputs from Automation API.

## Run

```bash
cd examples/automation/inline-program
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

## Notes

- This inline sample intentionally uses only `package:pulumi/pulumi.dart` in the inline source to keep dependencies minimal.
- Set `PULUMI_CONFIG_PASSPHRASE` if you want to use your own passphrase instead of the default.

