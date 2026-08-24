import 'dart:io';

import 'package:pulumi_dart_faas/src/build/args.dart';
import 'package:pulumi_dart_faas/src/build/build_runner.dart';
import 'package:test/test.dart';

void main() {
  late Directory temporaryDirectory;

  setUp(() {
    temporaryDirectory = Directory.systemTemp.createTempSync(
      'pulumi-dart-faas-build-runner-',
    );
  });

  tearDown(() => temporaryDirectory.deleteSync(recursive: true));

  test('auto detects build_runner in package_config.json', () {
    final dartTool = Directory('${temporaryDirectory.path}/.dart_tool')
      ..createSync();
    File('${dartTool.path}/package_config.json').writeAsStringSync('''
{"configVersion":2,"packages":[{"name":"build_runner"}]}
''');

    expect(
      shouldRunBuildRunner(
        DartBuildRunnerMode.auto,
        workingDirectory: temporaryDirectory.path,
      ),
      isTrue,
    );
  });

  test('auto is false when build_runner is not resolved', () {
    expect(
      shouldRunBuildRunner(
        DartBuildRunnerMode.auto,
        workingDirectory: temporaryDirectory.path,
      ),
      isFalse,
    );
  });

  test('always and never override package detection', () {
    expect(
      shouldRunBuildRunner(
        DartBuildRunnerMode.always,
        workingDirectory: temporaryDirectory.path,
      ),
      isTrue,
    );
    expect(
      shouldRunBuildRunner(
        DartBuildRunnerMode.never,
        workingDirectory: temporaryDirectory.path,
      ),
      isFalse,
    );
  });
}
