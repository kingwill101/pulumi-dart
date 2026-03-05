# VM Manager Azure (Dart)

This example ports the upstream Azure VM manager operational CLI scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/vm_manager_azure/`

## What it demonstrates

- Building a custom operational CLI on top of Automation API.
- `add` command to create a temporary VM stack.
- `cron`/`reap-once` commands to destroy stacks older than a configured threshold.
- Retry-oriented stack cleanup loop for operational reliability.

## Run

```bash
cd examples/automation/vm-manager-azure
dart run bin/main.dart add
```

Run the reaper continuously:

```bash
dart run bin/main.dart cron 5m
```

Run a single reaper pass:

```bash
dart run bin/main.dart reap-once 5m
```

## Notes

- This Dart port keeps the upstream operational CLI behavior and stack lifecycle semantics.
- The inline infrastructure payload is intentionally lightweight so the sample focuses on orchestration and cleanup behavior.

