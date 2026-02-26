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
```

Run any custom command with the same local smoke env setup:

```bash
task smoke:exec PACKAGE=gcp CMD='pulumi about'
task smoke:stack PACKAGE=gcp
task smoke:up PACKAGE=gcp

# Optional: override the default local passphrase for this run.
task smoke:preview PACKAGE=gcp DEFAULT_PULUMI_CONFIG_PASSPHRASE=my-passphrase
```

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
pulumi stack select dev --create --non-interactive >/dev/null
pulumi preview --non-interactive
```

## More Details

For full generator and package workflow details, see [`packages/README.md`](packages/README.md).
