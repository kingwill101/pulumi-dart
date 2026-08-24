import 'package:pulumi_dart_faas/src/build/script.dart';
import 'package:test/test.dart';

void main() {
  test('uses and quotes the selected Dart executable', () {
    final script = renderDartBuildScript(
      dartExecutable: '/opt/fvm versions/3.11/bin/dart',
      entryPoint: "backend/bin/server's.dart",
      binaryPath: 'build deploy/bin/server',
      archivePath: 'build deploy.tar.gz',
      targetOs: 'linux',
      targetArch: 'arm64',
    );

    expect(script, contains("'/opt/fvm versions/3.11/bin/dart' compile exe"));
    expect(script, contains("'backend/bin/server'\"'\"'s.dart'"));
    expect(script, contains("--target-arch='arm64'"));
  });
}
