import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:path/path.dart' as p;

/// Local Dart build settings that produce a deployable archive.
class DartBuildArchiveArgs {
  /// Dart entrypoint compiled with `dart compile exe`.
  final pulumi.Input<String> entryPoint;

  /// Output path for the compiled executable.
  ///
  /// Defaults to `build_deploy/bin/server`.
  final pulumi.Input<String>? outputBinaryPath;

  /// Output path for the generated tarball.
  ///
  /// Defaults to `build_deploy.tar.gz`.
  final pulumi.Input<String>? archivePath;

  /// Working directory used when running the local build command.
  final pulumi.Input<String>? workingDirectory;

  /// Target operating system passed to `dart compile exe`.
  ///
  /// Defaults to `linux`.
  final pulumi.Input<String>? targetOs;

  /// Target architecture passed to `dart compile exe`.
  ///
  /// Defaults to `x64`.
  final pulumi.Input<String>? targetArch;

  /// Additional change detectors for the underlying `command:local:Command`.
  final pulumi.Input<List<dynamic>>? triggers;

  /// Extra environment variables passed to the build command.
  final pulumi.Input<Map<String, String>>? environment;

  const DartBuildArchiveArgs({
    required this.entryPoint,
    this.outputBinaryPath,
    this.archivePath,
    this.workingDirectory,
    this.targetOs,
    this.targetArch,
    this.triggers,
    this.environment,
  });
}

/// Builds a Dart executable and exposes it as a Pulumi archive output.
///
/// Uses `command:local:Command` under the hood. This can be consumed by
/// provider adapters that accept archive-based sources.
class DartBuildArchive extends pulumi.ComponentResource {
  /// Pulumi archive containing the compiled output tree.
  late final pulumi.Output<dynamic> archive;

  /// Standard output from the underlying local build command.
  late final pulumi.Output<String> stdout;

  /// Standard error from the underlying local build command.
  late final pulumi.Output<String> stderr;

  DartBuildArchive(
    String name, {
    required DartBuildArchiveArgs args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'dart:faas:build:DartBuildArchive',
         name,
         const {},
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    final commandOptions = pulumi.CustomResourceOptions(parent: this);

    final outputBinaryPath =
        args.outputBinaryPath ?? 'build_deploy/bin/server'.input();
    final archivePath = args.archivePath ?? 'build_deploy.tar.gz'.input();
    final workingDirectory = args.workingDirectory ?? '.'.input();
    final targetOs = args.targetOs ?? 'linux'.input();
    final targetArch = args.targetArch ?? 'x64'.input();

    final buildScript =
        pulumi.Output.tuple(
          pulumi.Output.tuple4(
            args.entryPoint.toOutput(),
            outputBinaryPath.toOutput(),
            archivePath.toOutput(),
            targetOs.toOutput(),
          ),
          targetArch.toOutput(),
        ).apply<String>((values) {
          final entryPoint = values.$1.$1;
          final binaryPath = values.$1.$2;
          final archiveFile = values.$1.$3;
          final os = values.$1.$4;
          final arch = values.$2;
          final binaryDir = p.dirname(binaryPath);
          final stageDir = p.dirname(binaryDir);
          return '''
set -euo pipefail
rm -rf "$stageDir" "$archiveFile"
mkdir -p "$binaryDir"

dart compile exe "$entryPoint" -o "$binaryPath" --target-os="$os" --target-arch="$arch"
tar -czf "$archiveFile" -C "$stageDir" .
''';
        });

    final resolvedTriggers =
        args.triggers ??
        args.entryPoint.toOutput().apply<List<dynamic>>((value) => [value]);
    final resolvedArchivePaths = archivePath.toOutput().apply<List<String>>(
      (value) => [value],
    );

    final build = commandlocal.Command(
      '$name-local-build',
      args: commandlocal.CommandArgs(
        dir: workingDirectory,
        create: buildScript,
        update: buildScript,
        archivePaths: resolvedArchivePaths,
        triggers: resolvedTriggers,
        environment: args.environment,
      ),
      options: commandOptions,
    );

    archive = build.archive;
    stdout = build.stdout;
    stderr = build.stderr;

    registerOutputs({'archive': archive, 'stdout': stdout, 'stderr': stderr});
  }
}
