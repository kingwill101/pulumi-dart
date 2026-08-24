import 'package:pulumi/pulumi.dart' as pulumi;

import 'target.dart';

enum DartBuildRunnerMode { auto, always, never }

/// Local Dart build settings that produce a deployable archive.
class DartBuildArchiveArgs {
  final String entryPoint;
  final String? dartExecutable;
  final DartBuildTarget target;
  final String archivePath;
  final String workingDirectory;
  final DartBuildRunnerMode buildRunner;
  final pulumi.Input<List<dynamic>>? triggers;
  final pulumi.Input<Map<String, String>>? environment;

  const DartBuildArchiveArgs({
    required this.entryPoint,
    this.dartExecutable,
    this.target = const DartExecutableBuildTarget(),
    this.archivePath = 'build_deploy.tar.gz',
    this.workingDirectory = '.',
    this.buildRunner = DartBuildRunnerMode.auto,
    this.triggers,
    this.environment,
  });
}
