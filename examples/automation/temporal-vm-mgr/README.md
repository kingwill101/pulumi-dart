# Temporal VM Manager (Dart)

This example ports the upstream Temporal + Automation API VM lifecycle scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/temporal_vm_mgr/`

## What it demonstrates

- Orchestrating a temporary stack lifecycle in workflow-style stages:
  - ensure shared network stack
  - deploy VM stack
  - wait TTL
  - destroy + remove stack
- Managing Pulumi stacks entirely from application code.

## Run

```bash
cd examples/automation/temporal-vm-mgr
dart run bin/main.dart myvm1 5m
```

Keep stack running (skip destroy):

```bash
dart run bin/main.dart myvm1 5m --no-destroy
```

## Notes

- This Dart port focuses on the Automation workflow/lifecycle behavior and uses a lightweight simulated VM payload in the inline program.
- To integrate with an actual Temporal worker, invoke this workflow entrypoint from Temporal activity handlers.

