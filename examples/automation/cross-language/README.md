# Cross-Language (Dart)

This example ports the upstream cross-language Automation API scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/nodejs/crossLanguage-tsnode/`

## What it demonstrates

- Using a Dart Automation API driver to manage a local Pulumi program in a different runtime (`yaml`).
- Running `refresh`, `up`, and `destroy` for a local non-Dart Pulumi stack.

## Run

```bash
cd examples/automation/cross-language
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

