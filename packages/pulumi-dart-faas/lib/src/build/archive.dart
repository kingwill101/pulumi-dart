import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

import 'args.dart';
import 'build_runner.dart';
import 'dart_executable.dart';
import 'script.dart';
import 'source_digest.dart';
import 'target.dart';

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

    final dartExecutable = resolveDartExecutable(args.dartExecutable);
    String buildScript;
    switch (args.target) {
      case DartExecutableBuildTarget target:
        buildScript = renderDartBuildScript(
          entryPoint: args.entryPoint,
          binaryPath: target.outputPath,
          archivePath: args.archivePath,
          targetOs: target.targetOs,
          targetArch: target.targetArch,
          dartExecutable: dartExecutable,
          arguments: target.arguments,
        );
      case DartCompilerBuildTarget target:
        buildScript = renderDartCompilerScript(
          dartExecutable: dartExecutable,
          frontend: target.frontend,
          entryPoint: args.entryPoint,
          outputPath: target.outputPath,
          archivePath: args.archivePath,
          arguments: target.arguments,
        );
      case DartCliBuildTarget target:
        buildScript = renderDartCliBuildScript(
          entryPoint: args.entryPoint,
          outputDirectory: target.outputDirectory,
          archivePath: args.archivePath,
          dartExecutable: dartExecutable,
        );
    }

    if (shouldRunBuildRunner(
      args.buildRunner,
      workingDirectory: args.workingDirectory,
    )) {
      buildScript = prependBuildRunner(
        buildScript,
        dartExecutable: dartExecutable,
      );
    }

    final resolvedTriggers =
        args.triggers ?? [dartBuildSourceDigest(args.workingDirectory)].input();

    final build = commandlocal.Command(
      '$name-local-build',
      args: commandlocal.CommandArgs(
        dir: args.workingDirectory.input(),
        create: buildScript.input(),
        update: buildScript.input(),
        archivePaths: [args.archivePath].input(),
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
