import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact shape produced by the Dart archive builder.
sealed class DartBuildTarget {
  const DartBuildTarget();

  /// Produces one self-contained executable with `dart compile exe`.
  factory DartBuildTarget.executable({
    pulumi.Input<String>? outputPath,
    pulumi.Input<String>? targetOs,
    pulumi.Input<String>? targetArch,
  }) = DartExecutableBuildTarget;

  /// Produces a CLI bundle with `dart build cli`.
  ///
  /// CLI bundles target the platform running the build and may include native
  /// libraries under `bundle/lib`.
  factory DartBuildTarget.cli({pulumi.Input<String>? outputDirectory}) =
      DartCliBuildTarget;
}

/// A self-contained executable build target.
final class DartExecutableBuildTarget extends DartBuildTarget {
  final pulumi.Input<String>? outputPath;
  final pulumi.Input<String>? targetOs;
  final pulumi.Input<String>? targetArch;

  const DartExecutableBuildTarget({
    this.outputPath,
    this.targetOs,
    this.targetArch,
  });
}

/// A `dart build cli` bundle target.
final class DartCliBuildTarget extends DartBuildTarget {
  final pulumi.Input<String>? outputDirectory;

  const DartCliBuildTarget({this.outputDirectory});
}
