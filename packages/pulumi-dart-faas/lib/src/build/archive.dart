import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

import 'args.dart';
import 'script.dart';
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

    final archivePath = args.archivePath ?? 'build_deploy.tar.gz'.input();
    final workingDirectory = args.workingDirectory ?? '.'.input();
    final dartExecutable =
        args.dartExecutable ?? Platform.resolvedExecutable.input();

    final pulumi.Output<String> buildScript;
    switch (args.target) {
      case DartExecutableBuildTarget target:
        final outputPath =
            target.outputPath ?? 'build_deploy/bin/server'.input();
        final targetOs = target.targetOs ?? 'linux'.input();
        final targetArch = target.targetArch ?? 'x64'.input();
        buildScript =
            pulumi.Output.tuple(
              pulumi.Output.tuple(
                pulumi.Output.tuple4(
                  args.entryPoint.toOutput(),
                  outputPath.toOutput(),
                  archivePath.toOutput(),
                  targetOs.toOutput(),
                ),
                targetArch.toOutput(),
              ),
              dartExecutable.toOutput(),
            ).apply<String>((values) {
              return renderDartBuildScript(
                entryPoint: values.$1.$1.$1,
                binaryPath: values.$1.$1.$2,
                archivePath: values.$1.$1.$3,
                targetOs: values.$1.$1.$4,
                targetArch: values.$1.$2,
                dartExecutable: values.$2,
              );
            });
      case DartCliBuildTarget target:
        final outputDirectory =
            target.outputDirectory ?? 'build_deploy'.input();
        buildScript =
            pulumi.Output.tuple4(
              args.entryPoint.toOutput(),
              outputDirectory.toOutput(),
              archivePath.toOutput(),
              dartExecutable.toOutput(),
            ).apply<String>((values) {
              return renderDartCliBuildScript(
                entryPoint: values.$1,
                outputDirectory: values.$2,
                archivePath: values.$3,
                dartExecutable: values.$4,
              );
            });
    }

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
