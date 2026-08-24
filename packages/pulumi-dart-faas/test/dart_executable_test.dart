import 'dart:io';

import 'package:pulumi_dart_faas/src/build/dart_executable.dart';
import 'package:test/test.dart';

void main() {
  test('uses an explicitly configured executable', () {
    expect(
      resolveDartExecutable('/opt/fvm/dart', currentExecutable: '/app/program'),
      '/opt/fvm/dart',
    );
  });

  test('uses the current executable only when it is dart', () {
    expect(
      resolveDartExecutable(null, currentExecutable: '/opt/dart-sdk/bin/dart'),
      '/opt/dart-sdk/bin/dart',
    );
  });

  test('finds dart on PATH for a compiled Pulumi program', () {
    final directory = Directory.systemTemp.createTempSync('faas-dart-path-');
    addTearDown(() => directory.deleteSync(recursive: true));
    final executableName = Platform.isWindows ? 'dart.exe' : 'dart';
    final executable = File('${directory.path}/$executableName')..createSync();

    expect(
      resolveDartExecutable(
        null,
        currentExecutable: '/app/pulumi-program',
        environment: {'PATH': directory.path},
      ),
      executable.absolute.path,
    );
  });

  test('fails clearly when no Dart SDK executable can be found', () {
    expect(
      () => resolveDartExecutable(
        null,
        currentExecutable: '/app/pulumi-program',
        environment: const {'PATH': ''},
      ),
      throwsA(isA<StateError>()),
    );
  });
}
