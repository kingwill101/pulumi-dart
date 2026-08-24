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

  test('renders a dart build cli bundle', () {
    final script = renderDartCliBuildScript(
      dartExecutable: '/opt/fvm/bin/dart',
      entryPoint: 'bin/server.dart',
      outputDirectory: 'build/cli',
      archivePath: 'build/cli.tar.gz',
    );

    expect(
      script,
      contains(
        "'/opt/fvm/bin/dart' build cli "
        "--target='bin/server.dart' --output='build/cli'",
      ),
    );
    expect(script, contains("tar -czf 'build/cli.tar.gz' -C 'build/cli' ."));
  });
}
