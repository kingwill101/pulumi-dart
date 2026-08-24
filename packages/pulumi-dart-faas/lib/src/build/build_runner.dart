import 'dart:convert';
import 'dart:io';

import 'args.dart';

bool shouldRunBuildRunner(
  DartBuildRunnerMode mode, {
  required String workingDirectory,
}) => switch (mode) {
  DartBuildRunnerMode.always => true,
  DartBuildRunnerMode.never => false,
  DartBuildRunnerMode.auto => _packageConfigContainsBuildRunner(
    workingDirectory,
  ),
};

bool _packageConfigContainsBuildRunner(String workingDirectory) {
  final config = File.fromUri(
    Directory(
      workingDirectory,
    ).absolute.uri.resolve('.dart_tool/package_config.json'),
  );
  if (!config.existsSync()) return false;
  try {
    final decoded = jsonDecode(config.readAsStringSync());
    if (decoded is! Map<String, dynamic>) return false;
    final packages = decoded['packages'];
    return packages is List &&
        packages.whereType<Map<String, dynamic>>().any(
          (package) => package['name'] == 'build_runner',
        );
  } on FormatException {
    return false;
  }
}
