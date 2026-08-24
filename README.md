# Pulumi Dart

Pulumi Dart is a community-maintained Pulumi language runtime, core SDK, and
provider SDK ecosystem for defining infrastructure in Dart.

The repository contains:

- the `pulumi-language-dart` language host and Dart code generator;
- the [`pulumi`](packages/pulumi-dart/README.md) core SDK;
- generated provider SDKs under [`packages/sdks`](packages/sdks);
- Automation API, dynamic-resource, and provider-authoring support;
- application and serverless building blocks; and
- templates, examples, conformance tests, and repository-maintenance tooling.

> [!IMPORTANT]
> Dart support is community maintained rather than an officially supported
> Pulumi language. Please report compatibility problems in this repository.

## Requirements

- Dart SDK `>=3.11.0 <4.0.0`
- the [Pulumi CLI](https://www.pulumi.com/docs/iac/download-install/)
- `pulumi-language-dart` on `PATH`

## Install

Install the Dart SDK package and its helper command, then use that command to
install the matching language host:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

Verify the installation:

```bash
dart --version
pulumi version
pulumi-language-dart -help
```

Pub-generated executable launchers need a real `dart` executable on `PATH`; a
shell alias such as `alias dart="fvm dart"` is not inherited. With FVM, use:

```bash
fvm exec pulumi-dart install-language-host
```

The language host can also be installed directly from a release:

```bash
curl -fsSL https://raw.githubusercontent.com/kingwill101/pulumi-dart/master/scripts/install-pulumi-language-dart.sh | bash
```

See the [core package documentation](packages/pulumi-dart/README.md) for
installer overrides and instructions for downloading a fresh language-host
snapshot built by GitHub Actions.

## Quickstart

Create a project from the minimal Dart template:

```bash
pulumi new https://github.com/kingwill101/pulumi-dart/tree/master/templates/dart-minimal \
  --yes \
  --name pulumi-dart-quickstart \
  --stack dev \
  --secrets-provider passphrase
```

The essential project files are a `Pulumi.yaml`, a Dart `pubspec.yaml`, and a
Dart entrypoint under `bin/`. A small stack looks like this:

```dart
import 'package:pulumi/pulumi.dart';

class QuickstartStack extends Stack {
  QuickstartStack() {
    registerOutputs({
      'message': Output.create<Object?>('hello from Dart'),
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => QuickstartStack());
}
```

Install dependencies and deploy:

```bash
dart pub get
pulumi preview
pulumi up
```

Clean up the stack when finished:

```bash
pulumi destroy
```

## Provider SDKs

Generated packages live under `packages/sdks/<provider>`. The repository tracks
SDKs for AWS, Azure, GCP, Kubernetes, Random, TLS, and other commonly used
providers. Browse [`packages/sdks`](packages/sdks) for the current set.

Use a published SDK normally:

```bash
dart pub add pulumi
dart pub add pulumi_random
```

Packages that have not yet been published can be consumed from Git:

```yaml
dependencies:
  pulumi:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/pulumi-dart
  pulumi_random:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/random
```

Pulumi can also generate a Dart SDK into the current project from a provider
name, version, or local schema:

```bash
pulumi package add random
pulumi package add aws@7.20.0
pulumi package add ./provider.schema.json
```

## Templates and libraries

Maintained project templates are documented in
[`templates/README.md`](templates/README.md):

- `dart-minimal` for a minimal stack;
- `dart-random` for an additional starter stack;
- `dart-aws-app-platform` for ECS/Fargate applications; and
- `dart-aws-faas` for AWS Lambda workloads.

Higher-level packages include:

- [`pulumi_aws_app_platform`](packages/pulumi-aws-app-platform/README.md) for
  containerized Dart services on AWS; and
- [`pulumi_dart_faas`](packages/pulumi-dart-faas/README.md) for AWS Lambda and
  GCP Cloud Run deployment patterns.

The core SDK also exposes:

- [Automation API](packages/pulumi-dart/README.md#automation-api);
- [dynamic resources](packages/pulumi-dart/README.md#dynamic-resource-apis);
  and
- [provider authoring](packages/pulumi-dart/README.md#provider-authoring-apis).

## Repository development

The checked-in devenv pins the Go, Dart, and Pulumi versions used by the
repository. After cloning, initialize submodules and enter the environment:

```bash
git submodule update --init --recursive
devenv shell
integration-check
```

Common validation commands are:

```bash
dart pub get
dart analyze
dart test
language-host-unit-test
language-codegen-test
language-conformance-test
```

Direct integration tests do not require Dagger:

```bash
repodoc integration:prewarm
repodoc integration:run --run '^TestEmptyDart$' --timeout 10m
```

The [`repodoc`](repodoc/README.md) CLI is the source of truth for repository
maintenance:

```bash
repodoc --help
repodoc schema:check
repodoc packages:update --provider aws
repodoc upstream:check --details
```

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for validation, conformance snapshot
generation, provider maintenance, and pull-request expectations.

## Repository layout

| Path | Contents |
| --- | --- |
| `packages/pulumi-dart` | Core Dart SDK and helper CLI |
| `pulumi-language-dart` | Language host, code generator, and conformance driver |
| `packages/sdks` | Generated provider SDKs and tracked schemas |
| `integration_tests` | Direct Go integration harness and Dart programs |
| `repodoc` | Repository maintenance and CI orchestration CLI |
| `templates` | `pulumi new` project templates |
| `examples` | Runnable SDK and infrastructure examples |
| `docs` | Maintenance, readiness, and parity documentation |

## Contributing and support

Contributions are welcome. Start with [`CONTRIBUTING.md`](CONTRIBUTING.md), and
use [GitHub Issues](https://github.com/kingwill101/pulumi-dart/issues) for bugs,
feature requests, and compatibility reports.

Pulumi product documentation is available at
[pulumi.com/docs](https://www.pulumi.com/docs/).
