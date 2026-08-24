import 'dart:io';

import 'package:crypto/crypto.dart';

const _ignoredDirectories = {'.dart_tool', '.git', 'build', 'build_deploy'};

const _manifestNames = {'build.yaml', 'pubspec.lock', 'pubspec.yaml'};

String dartBuildSourceDigest(String workingDirectory) {
  final root = Directory(workingDirectory).absolute;
  final files =
      root
          .listSync(recursive: true, followLinks: false)
          .whereType<File>()
          .where((file) => _isBuildInput(root, file))
          .toList()
        ..sort((left, right) => left.path.compareTo(right.path));

  final bytes = <int>[];
  for (final file in files) {
    bytes
      ..addAll(file.path.substring(root.path.length).codeUnits)
      ..add(0)
      ..addAll(file.readAsBytesSync())
      ..add(0);
  }
  return sha256.convert(bytes).toString();
}

bool _isBuildInput(Directory root, File file) {
  final relative = file.path.substring(root.path.length + 1);
  final segments = relative.split(Platform.pathSeparator);
  if (segments.any(_ignoredDirectories.contains)) return false;
  return relative.endsWith('.dart') || _manifestNames.contains(segments.last);
}
