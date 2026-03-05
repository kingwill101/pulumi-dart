# SSH Tunnel (Dart)

This example ports the upstream SSH tunnel Automation API orchestration scenario to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/nodejs/ssh-tunnel/`

## What it demonstrates

- Orchestrating two local Pulumi stacks from one Automation API driver:
  - `vpc` stack (network and bastion outputs)
  - `database` stack (database resources)
- Establishing an SSH tunnel between stack operations and cleaning it up afterwards.
- Running stack operations in order: `up`, `refresh`, and `destroy`.

## Run

```bash
cd examples/automation/ssh-tunnel
dart run bin/main.dart up dev ~/.ssh/id_rsa.pub
```

Refresh:

```bash
dart run bin/main.dart refresh dev
```

Destroy:

```bash
dart run bin/main.dart destroy dev
```

## Notes

- The tunnel command defaults to `ssh`; override with `SSH_BINARY` if needed.
- As with the upstream example, this expects your SSH authentication to be usable by the local SSH client.

