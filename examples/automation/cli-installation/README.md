# CLI Installation (Dart)

This example ports the upstream Go Automation API CLI installation scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/cli_installation/`

## What it demonstrates

- Running Automation API with a custom Pulumi CLI executable path.
- Isolating CLI state with a custom `PULUMI_HOME`.
- Creating/selecting inline stacks and running `up`/`destroy`.

## Run

```bash
cd examples/automation/cli-installation
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

## Notes

- By default this sample installs Pulumi CLI into a temporary directory using the official install script.
- Set `PULUMI_BINARY` to skip install and force a specific CLI binary path.
- Set `PULUMI_CLI_VERSION` to change the installed CLI version (default: `3.104.1`).

