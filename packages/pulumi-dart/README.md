# Pulumi for Dart

`pulumi` is the core SDK for defining and managing infrastructure in Dart. It
provides the runtime primitives used by Pulumi programs, generated provider
SDKs, Automation API clients, dynamic resources, and Dart-authored providers.

> [!IMPORTANT]
> A Dart Pulumi project needs both this package and the
> `pulumi-language-dart` executable. The Pulumi CLI starts the language host to
> load and run your Dart program.

## Requirements

- Dart SDK `>=3.11.0 <4.0.0`
- [Pulumi CLI](https://www.pulumi.com/docs/iac/download-install/)
- `pulumi-language-dart` available on your `PATH`

## Install

Add the runtime package:

```bash
dart pub add pulumi
```

Add a provider SDK as needed:

```bash
dart pub add pulumi_random
```

Verify all three parts of the toolchain before creating a stack:

```bash
dart --version
pulumi version
pulumi-language-dart -help
```

## Install the Dart language host

This package ships a small helper CLI for installing `pulumi-language-dart`:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

Pub-generated executable launchers require `dart` to be available on `PATH`.
A shell alias such as `alias dart="fvm dart"` is not inherited by the launcher.
When using FVM, run the installed command in FVM's SDK environment instead:

```bash
fvm exec pulumi-dart install-language-host
```

Alternatively, invoke the package executable directly through FVM:

```bash
fvm dart pub global run pulumi:pulumi_dart install-language-host
```

Useful options:

```bash
pulumi-dart install-language-host --version v3.0.0
pulumi-dart install-language-host --install-dir "$HOME/bin"
pulumi-dart install-language-host --repo kingwill101/pulumi-dart
```

The installer downloads a released language host. To test the newest
`master` build before a release, use a CI snapshot instead.

### Download a language host built by CI

The
[Dart Language Host Release](https://github.com/kingwill101/pulumi-dart/actions/workflows/dart-release-language-host.yml)
workflow can build Linux, macOS, and Windows archives without creating a
release. Start a `snapshot` run from the workflow page, or with GitHub CLI:

```bash
gh workflow run dart-release-language-host.yml \
  --repo kingwill101/pulumi-dart \
  --ref master \
  -f mode=snapshot
```

Find and follow the run, then download its artifact:

```bash
run_id="$(gh run list \
  --repo kingwill101/pulumi-dart \
  --workflow dart-release-language-host.yml \
  --event workflow_dispatch \
  --limit 1 \
  --json databaseId \
  --jq '.[0].databaseId')"

gh run watch "$run_id" --repo kingwill101/pulumi-dart --exit-status
gh run download "$run_id" \
  --repo kingwill101/pulumi-dart \
  --name pulumi-language-dart-snapshot \
  --dir .language-host-snapshot
```

The artifact contains archives for `darwin`, `linux`, and `windows`, on both
`amd64` and `arm64`, plus a checksum file. Extract the archive matching your
machine and install the binary somewhere on `PATH`, for example:

```bash
tar -xzf .language-host-snapshot/pulumi-language-dart-*-darwin-arm64.tar.gz
install -m 0755 pulumi-language-dart "$HOME/.local/bin/pulumi-language-dart"
pulumi-language-dart -help
```

CI snapshot artifacts are retained for seven days. They are development builds,
so use a tagged release for stable installations.

## Create a project

A minimal project needs `Pulumi.yaml`, `pubspec.yaml`, and a Dart entrypoint.

```yaml
# Pulumi.yaml
name: hello-dart
runtime: dart
description: A minimal Pulumi Dart project
```

```yaml
# pubspec.yaml
name: hello_dart
environment:
  sdk: ">=3.11.0 <4.0.0"
dependencies:
  pulumi: ^3.1.0
  pulumi_random: ^4.21.1
```

Place the program below in `bin/main.dart`, then run `dart pub get` and
`pulumi preview`.

## Minimal Pulumi program

```dart
import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  late final Output<Object?> message;

  MyStack() {
    final config = Config();
    final name = config.get('name') ?? 'world';
    message = Output.create<Object?>('hello-$name');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [OutputProperty('message', message)];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => MyStack());
}
```

## Example with a provider SDK

```dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_random/index.dart' as random;

class AppStack extends pulumi.Stack {
  late final pulumi.Output<Object?> petName;

  AppStack() {
    final pet = random.RandomPet(
      'pet',
      args: random.RandomPetArgs(prefix: 'dart'),
    );
    petName = pet.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('petName', petName)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AppStack());
}
```

## Running with Pulumi CLI

After creating a Pulumi project and adding dependencies:

```bash
pulumi stack init dev
pulumi config set name dart
pulumi preview
pulumi up
```

Destroy when finished:

```bash
pulumi destroy
```

If Pulumi reports that it cannot find the Dart language plugin, confirm that
`pulumi-language-dart` is executable and visible in the same process `PATH` as
the `pulumi` command:

```bash
command -v pulumi-language-dart
pulumi-language-dart -help
```

## Core concepts

### `Input` and `Output`

- Use `Input<T>` for resource arguments that can accept either plain values or
  computed values from other resources.
- Use `Output<T>` for values produced by resources and invokes.
- Compose outputs with `apply`, `Output.tuple`, and the collection helpers
  instead of trying to extract values eagerly.

### `Stack`

- A Pulumi Dart program typically defines one `Stack` subclass.
- Resources are created in the constructor.
- Exported stack outputs are returned from `getOutputProperties()`.

### `Config`

- `Config()` reads values from the current project namespace.
- `Config('pkg')` targets another namespace.
- Use `require`, `getBoolean`, `getNumber`, and related helpers to validate
  config at the edge of your program.

### `ResourceOptions`

Use `ResourceOptions` to control:

- `parent`
- `dependsOn`
- `provider`
- `protect`
- `ignoreChanges`
- `deleteBeforeReplace`
- aliases, transforms, and hooks for advanced component/library code

## Additional libraries in this package

### Automation API

Import:

```dart
import 'package:pulumi/automation.dart' as automation;
```

Use it to drive Pulumi CLI workflows from Dart applications.

See [`example/automation_cli_example.dart`](example/automation_cli_example.dart).

### Dynamic resource APIs

Import:

```dart
import 'package:pulumi/dynamic.dart' as dynamic;
```

Use this when you need provider-like behavior inside a Pulumi program without
publishing a separate provider plugin.

See [`example/dynamic_resource_example.dart`](example/dynamic_resource_example.dart).

### Provider authoring APIs

Import:

```dart
import 'package:pulumi/provider.dart';
```

Use this when you are implementing a Pulumi provider plugin in Dart.

See:

- [`example/provider_authoring_example.dart`](example/provider_authoring_example.dart)
- [`integration_tests/provider_authoring/dart/bin/provider_plugin.dart`](../integration_tests/provider_authoring/dart/bin/provider_plugin.dart)

## More examples

- raw invoke example:
  - [`example/raw_invoke_example.dart`](example/raw_invoke_example.dart)
- raw provider/custom resource example:
  - [`example/pulumi_dart_example.dart`](example/pulumi_dart_example.dart)

## Repository

- source:
  - <https://github.com/kingwill101/pulumi-dart>
- issue tracker:
  - <https://github.com/kingwill101/pulumi-dart/issues>

## Using generated provider SDKs directly from Git

This repository houses generated provider SDK packages under:

- `packages/sdks/<provider>/`

Examples:

- `packages/sdks/random/`
- `packages/sdks/aws/`
- `packages/sdks/gcp/`

If a provider package has not been published to pub.dev yet, you can depend on
it directly from this repository.

Example:

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

This is the recommended approach for unreleased or not-yet-published provider
SDKs while the initial pub.dev release set is still intentionally small.

## Development

```bash
dart pub get
dart analyze
dart test
```
