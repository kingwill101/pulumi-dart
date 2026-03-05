# Inline/Local Hybrid Program (Dart)

This example ports the upstream Go inline/local hybrid Automation API example to
Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/inline_local_hybrid/`

## What it demonstrates

- Shared infrastructure module (`infra`) consumed by:
  - an Automation API driver (`bin/main.dart` / `lib/main.dart`)
  - a Pulumi CLI wrapper project (`cli/`)
- Using automation against the same CLI workspace directory so project/stack
  settings are shared.
- Keeping CLI workflows available (`pulumi stack output`, `pulumi preview`,
  etc.) while still driving deployments programmatically.

## Layout

- `infra/`: shared Pulumi infrastructure code.
- `cli/`: thin Pulumi CLI driver project.
- root package: automation driver for lifecycle orchestration.

## Run automation driver

```bash
cd examples/automation/inline-local-hybrid
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

## Use CLI with same stack/workspace

```bash
cd examples/automation/inline-local-hybrid/cli
pulumi stack output
```

