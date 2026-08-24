import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

import 'args.dart';
import 'script.dart';

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
    final dartExecutable =
        args.dartExecutable ?? Platform.resolvedExecutable.input();

    final buildScript =
        pulumi.Output.tuple(
          pulumi.Output.tuple(
            pulumi.Output.tuple4(
              args.entryPoint.toOutput(),
              outputBinaryPath.toOutput(),
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
