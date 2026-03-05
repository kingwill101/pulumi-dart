# Local Program (Dart)

This example ports the upstream Go Automation API local-program example to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/local_program/`

## What it demonstrates

- Adding an Automation API driver to an existing local Pulumi project.
- Stack lifecycle orchestration from code (`refresh`, `up`, `destroy`).
- Passing stack config (`aws:region`) before update.

## Layout

- `bin/main.dart` and `lib/main.dart`: Automation driver.
- `fargate/`: local Pulumi CLI program (nested project).
- `fargate/app/`: container app used by the nested Pulumi project.

## Run

```bash
cd examples/automation/local-program
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

