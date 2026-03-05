# stderr (Dart)

Dart port of `thirdparty/pulumi-command/examples/stderr`.

## Deploy

```bash
pulumi up
```

## Notes

- This scenario intentionally includes one failing command (`stdout-and-stderr-error`).
- The stack is expected to fail during deployment and surface stderr diagnostics.
