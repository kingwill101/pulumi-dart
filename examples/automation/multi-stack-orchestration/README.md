# Multi-Stack Orchestration (Dart)

This example ports the upstream Go multi-stack orchestration Automation API
example to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/multi_stack_orchestration/`

## What it demonstrates

- Orchestrating two stacks from one Automation API driver:
  - `inlineMultiStackWebsite`
  - `inlineMultiStackObject`
- Reading outputs from one stack (`bucketID`) and propagating them as input
  config to a dependent stack.
- Ordered destroy flow (dependent stack first, then dependency stack).

## Run

```bash
cd examples/automation/multi-stack-orchestration
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

