import 'package:pulumi/pulumi.dart' as pulumi;

import 'target.dart';

/// Local Dart build settings that produce a deployable archive.
class DartBuildArchiveArgs {
  final pulumi.Input<String> entryPoint;
  final pulumi.Input<String>? dartExecutable;
  final DartBuildTarget target;
  final pulumi.Input<String>? archivePath;
  final pulumi.Input<String>? workingDirectory;
  final pulumi.Input<List<dynamic>>? triggers;
  final pulumi.Input<Map<String, String>>? environment;

  const DartBuildArchiveArgs({
    required this.entryPoint,
    this.dartExecutable,
    this.target = const DartExecutableBuildTarget(),
    this.archivePath,
    this.workingDirectory,
    this.triggers,
    this.environment,
  });
}
