# Pulumi Dart

This repository contains the Pulumi Dart language host, core SDK, generator, and integration tests.

## Local Provider SDK Testing (No Publish Required)

You do not need to publish `pulumi` or generated provider packages to pub.dev to test locally.
Use local `path` dependencies plus a `dependency_overrides` entry for `pulumi`.

### Generate a provider SDK

```bash
task setup
task generate:provider PACKAGE=gcp

# Optional generation controls:
# - keep manually curated examples across regenerations (default true)
# - run dart format on generated package output (default true)
task generate:provider PACKAGE=gcp PRESERVE_EXAMPLES=true FORMAT_GENERATED=true

# Fail generation if formatter finds parse errors (default is warning-only)
task generate:provider PACKAGE=gcp STRICT_FORMAT=true
```

Generated SDKs are placed under `packages/<provider>`.

Generated providers also include namespaced root module entrypoints under
`lib/<module>.dart` (for example `package:pulumi_aws/ec2.dart`), so
consumer code can import modules with explicit aliases.

### Quick smoke test project

```bash
task smoke:init PACKAGE=gcp
task smoke:preview PACKAGE=gcp

# Full generator verification matrix (generate + analyze + smoke):
task verify:matrix
```

Run any custom command with the same local smoke env setup:

```bash
task smoke:exec PACKAGE=gcp CMD='pulumi about'
task smoke:stack PACKAGE=gcp
task smoke:up PACKAGE=gcp

# Optional: override the default local passphrase for this run.
task smoke:preview PACKAGE=gcp DEFAULT_PULUMI_CONFIG_PASSPHRASE=my-passphrase
```

`smoke:*` tasks now derive a deterministic stack name from the active passphrase
(`dev-<sha1_8>` by default), which avoids passphrase-mismatch failures
when old local smoke stacks were encrypted with a different passphrase.

This creates a project at `.gen/smoke/<provider>` wired to:

- `pulumi_<provider>` from `packages/<provider>` via `path:`
- `pulumi` from local `pulumi-dart/` via `dependency_overrides`

### Wire an existing Pulumi Dart project to local SDKs

```bash
task project:use-local-provider \
  PROJECT_DIR=/abs/path/to/your/pulumi-project \
  PACKAGE=gcp
```

Then run preview from that project:

```bash
pulumi stack select dev --create --non-interactive
pulumi preview --non-interactive
```

If you still run preview manually in a local smoke project, include:

```bash
cd .gen/smoke/gcp
export PATH="/abs/path/to/pulumi-dart/pulumi-language-dart:$PATH"
export PULUMI_CONFIG_PASSPHRASE="pulumi-dart-smoke"
STACK_HASH="$(printf '%s' "${PULUMI_CONFIG_PASSPHRASE}" | sha1sum | awk '{print substr($1,1,8)}')"
pulumi stack select "dev-${STACK_HASH}" --create --non-interactive >/dev/null
pulumi preview --non-interactive
```

## More Details

For full generator and package workflow details, see [`packages/README.md`](packages/README.md).

## SDK Mutation Testing

`pulumi-dart/` is configured for mutation testing with `mutation_test`.

```bash
task test:coverage
task test:mutation:dry
task test:mutation:dry:coverage
task test:mutation
task test:mutation:coverage
```

The mutation config is at `pulumi-dart/mutation-test.xml` and focuses on the
runtime surface (`lib/src/deployment`, `lib/src/resource`, serialization,
monitor/callback paths).

Coverage ratchet baseline:

- current baseline: `29.27%` line coverage
- enforcement command: `task test:coverage:ratchet`
- canonical artifact path (local + CI upload target): `pulumi-dart/coverage/lcov.info`

Parity backlog inventory and resolved marker classification:

- [`docs/pulumi-dart-parity-backlog.md`](docs/pulumi-dart-parity-backlog.md)
