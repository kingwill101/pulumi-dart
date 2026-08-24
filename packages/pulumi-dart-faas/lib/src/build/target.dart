/// A Dart compiler frontend supported by `dart compile`.
enum DartCompilerFrontend {
  aotSnapshot('aot-snapshot'),
  jitSnapshot('jit-snapshot'),
  kernel('kernel'),
  javascript('js'),
  webAssembly('wasm');

  const DartCompilerFrontend(this.command);

  final String command;
}

/// The artifact shape produced by the Dart archive builder.
sealed class DartBuildTarget {
  const DartBuildTarget();

  factory DartBuildTarget.executable({
    String outputPath,
    String targetOs,
    String targetArch,
    List<String> arguments,
  }) = DartExecutableBuildTarget;

  factory DartBuildTarget.aotSnapshot({
    String outputPath = 'build_deploy/bin/app.aot',
    String targetOs = 'linux',
    String targetArch = 'x64',
    List<String> arguments = const [],
  }) => DartCompilerBuildTarget._(
    frontend: DartCompilerFrontend.aotSnapshot,
    outputPath: outputPath,
    arguments: [
      '--target-os=$targetOs',
      '--target-arch=$targetArch',
      ...arguments,
    ],
  );

  factory DartBuildTarget.jitSnapshot({
    String outputPath = 'build_deploy/bin/app.jit',
    List<String> arguments = const [],
  }) => DartCompilerBuildTarget._(
    frontend: DartCompilerFrontend.jitSnapshot,
    outputPath: outputPath,
    arguments: arguments,
  );

  factory DartBuildTarget.kernel({
    String outputPath = 'build_deploy/bin/app.dill',
    List<String> arguments = const [],
  }) => DartCompilerBuildTarget._(
    frontend: DartCompilerFrontend.kernel,
    outputPath: outputPath,
    arguments: arguments,
  );

  factory DartBuildTarget.javascript({
    String outputPath = 'build_deploy/web/main.js',
    int optimizationLevel = 2,
    List<String> arguments = const [],
  }) {
    if (optimizationLevel < 0 || optimizationLevel > 4) {
      throw RangeError.range(optimizationLevel, 0, 4, 'optimizationLevel');
    }
    return DartCompilerBuildTarget._(
      frontend: DartCompilerFrontend.javascript,
      outputPath: outputPath,
      arguments: ['-O$optimizationLevel', ...arguments],
    );
  }

  factory DartBuildTarget.webAssembly({
    String outputPath = 'build_deploy/web/main.wasm',
    bool sourceMaps = true,
    List<String> arguments = const [],
  }) => DartCompilerBuildTarget._(
    frontend: DartCompilerFrontend.webAssembly,
    outputPath: outputPath,
    arguments: [
      sourceMaps ? '--source-maps' : '--no-source-maps',
      ...arguments,
    ],
  );

  factory DartBuildTarget.cli({String outputDirectory}) = DartCliBuildTarget;
}

final class DartExecutableBuildTarget extends DartBuildTarget {
  final String outputPath;
  final String targetOs;
  final String targetArch;
  final List<String> arguments;

  const DartExecutableBuildTarget({
    this.outputPath = 'build_deploy/bin/server',
    this.targetOs = 'linux',
    this.targetArch = 'x64',
    this.arguments = const [],
  });
}

final class DartCompilerBuildTarget extends DartBuildTarget {
  final DartCompilerFrontend frontend;
  final String outputPath;
  final List<String> arguments;

  const DartCompilerBuildTarget._({
    required this.frontend,
    required this.outputPath,
    required this.arguments,
  });
}

final class DartCliBuildTarget extends DartBuildTarget {
  final String outputDirectory;

  const DartCliBuildTarget({this.outputDirectory = 'build_deploy'});
}
