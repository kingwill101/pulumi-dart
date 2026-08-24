import 'package:pulumi_dart_faas/src/build/script.dart';
import 'package:pulumi_dart_faas/src/build/target.dart';
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

  for (final frontend in DartCompilerFrontend.values) {
    test('renders the ${frontend.command} compiler frontend', () {
      final script = renderDartCompilerScript(
        dartExecutable: 'dart',
        frontend: frontend,
        entryPoint: 'bin/main.dart',
        outputPath: 'build/out',
        archivePath: 'build/out.tar.gz',
        arguments: const ['--verbose'],
      );

      expect(
        script,
        contains(
          "'dart' compile '${frontend.command}' '--verbose' -o 'build/out' "
          "'bin/main.dart'",
        ),
      );
    });
  }

  test('prepends build_runner without duplicating shell setup', () {
    final script = prependBuildRunner(
      renderDartCompilerScript(
        dartExecutable: 'dart',
        frontend: DartCompilerFrontend.kernel,
        entryPoint: 'bin/main.dart',
        outputPath: 'build/main.dill',
        archivePath: 'build/main.tar.gz',
      ),
      dartExecutable: '/opt/fvm/dart',
    );

    expect(
      script,
      startsWith(
        "set -eu\n"
        "'/opt/fvm/dart' run build_runner build "
        '--delete-conflicting-outputs',
      ),
    );
    expect('set -eu'.allMatches(script), hasLength(1));
  });
}
