import 'package:pulumi/pulumi.dart' as pulumi;

/// Local Dart build settings that produce a deployable archive.
class DartBuildArchiveArgs {
  final pulumi.Input<String> entryPoint;
  final pulumi.Input<String>? dartExecutable;
  final pulumi.Input<String>? outputBinaryPath;
  final pulumi.Input<String>? archivePath;
  final pulumi.Input<String>? workingDirectory;
  final pulumi.Input<String>? targetOs;
  final pulumi.Input<String>? targetArch;
  final pulumi.Input<List<dynamic>>? triggers;
  final pulumi.Input<Map<String, String>>? environment;

  const DartBuildArchiveArgs({
    required this.entryPoint,
    this.dartExecutable,
    this.outputBinaryPath,
    this.archivePath,
    this.workingDirectory,
    this.targetOs,
    this.targetArch,
    this.triggers,
    this.environment,
  });
}
