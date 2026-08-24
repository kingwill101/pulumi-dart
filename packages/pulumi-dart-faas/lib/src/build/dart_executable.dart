import 'dart:io';

String resolveDartExecutable(
  String? configured, {
  String? currentExecutable,
  Map<String, String>? environment,
}) {
  if (configured case final configured? when configured.trim().isNotEmpty) {
    return configured;
  }

  final current = currentExecutable ?? Platform.resolvedExecutable;
  if (_isDartExecutable(current)) return current;

  final executableName = Platform.isWindows ? 'dart.exe' : 'dart';
  final path = (environment ?? Platform.environment)['PATH'];
  if (path != null) {
    for (final directory in path.split(Platform.isWindows ? ';' : ':')) {
      final candidate = File(
        '${directory.endsWith(Platform.pathSeparator) ? directory : '$directory${Platform.pathSeparator}'}$executableName',
      );
      if (candidate.existsSync()) return candidate.absolute.path;
    }
  }

  throw StateError(
    'Unable to find the Dart SDK executable. Set '
    'DartBuildArchiveArgs.dartExecutable or add dart to PATH.',
  );
}

bool _isDartExecutable(String path) {
  final name = path.split(Platform.pathSeparator).last.toLowerCase();
  return name == 'dart' || name == 'dart.exe';
}
