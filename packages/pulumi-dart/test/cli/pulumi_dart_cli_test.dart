import 'dart:io';

import 'package:pulumi/src/cli/install_language_host_cli.dart';
import 'package:test/test.dart';

void main() {
  group('runPulumiDartCli', () {
    test('prints usage with no args', () async {
      final out = StringBuffer();
      final err = StringBuffer();

      final exitCode = await runPulumiDartCli([], out: out, err: err);

      expect(exitCode, 0);
      expect(out.toString(), contains('Pulumi Dart utility CLI'));
      expect(err.toString(), isEmpty);
    });

    test('prints usage with help flag', () async {
      final out = StringBuffer();

      final exitCode = await runPulumiDartCli(['--help'], out: out);

      expect(exitCode, 0);
      expect(out.toString(), contains('Usage:'));
    });

    test('returns error for unknown command', () async {
      final out = StringBuffer();
      final err = StringBuffer();

      final exitCode = await runPulumiDartCli(['unknown'], out: out, err: err);

      expect(exitCode, 2);
      expect(err.toString(), contains('Unknown command: unknown'));
      expect(out.toString(), contains('Usage:'));
    });
  });

  group('installLanguageHost', () {
    test('rejects unsupported platforms', () async {
      final out = StringBuffer();
      final err = StringBuffer();

      final exitCode = await installLanguageHost(
        const [],
        isLinux: false,
        isMacOS: false,
        out: out,
        err: err,
      );

      expect(exitCode, 1);
      expect(
        err.toString(),
        contains('currently supports Linux/macOS through bash installer'),
      );
      expect(out.toString(), isEmpty);
    });

    test('uses defaults when no flags are provided', () async {
      final out = StringBuffer();
      late String capturedUrl;
      late String capturedScriptPath;
      late List<String> capturedArgs;

      final exitCode = await installLanguageHost(
        const [],
        isLinux: true,
        isMacOS: false,
        out: out,
        createTempDir: Directory.systemTemp.createTemp,
        downloadFile: (url, file) async {
          capturedUrl = url;
          await file.writeAsString('#!/usr/bin/env bash\n');
        },
        makeExecutable: (_) async {},
        runInstaller: (scriptPath, args) async {
          capturedScriptPath = scriptPath;
          capturedArgs = args;
          return 0;
        },
      );

      expect(exitCode, 0);
      expect(
        capturedUrl,
        buildInstallerScriptUrl(
          repo: defaultPulumiDartRepo,
          ref: defaultPulumiDartRef,
        ),
      );
      expect(capturedScriptPath, contains('install-pulumi-language-dart.sh'));
      expect(
        capturedArgs,
        buildInstallerScriptArgs(repo: defaultPulumiDartRepo),
      );
      expect(out.toString(), contains('Running installer script from:'));
    });

    test('applies repo env override and forwards flags', () async {
      late String capturedUrl;
      late List<String> capturedArgs;

      final exitCode = await installLanguageHost(
        const [
          '--ref',
          'stable',
          '--version',
          'v3.0.0',
          '--install-dir',
          '/tmp/bin',
        ],
        environment: {'PULUMI_DART_RELEASE_REPO': 'example/pulumi-dart'},
        isLinux: true,
        isMacOS: false,
        createTempDir: Directory.systemTemp.createTemp,
        downloadFile: (url, file) async {
          capturedUrl = url;
          await file.writeAsString('#!/usr/bin/env bash\n');
        },
        makeExecutable: (_) async {},
        runInstaller: (_, args) async {
          capturedArgs = args;
          return 0;
        },
      );

      expect(exitCode, 0);
      expect(
        capturedUrl,
        'https://raw.githubusercontent.com/example/pulumi-dart/stable/scripts/install-pulumi-language-dart.sh',
      );
      expect(capturedArgs, [
        '--version',
        'v3.0.0',
        '--install-dir',
        '/tmp/bin',
        '--repo',
        'example/pulumi-dart',
      ]);
    });

    test('flag repo overrides env repo', () async {
      late String capturedUrl;

      final exitCode = await installLanguageHost(
        const ['--repo', 'flag/repo'],
        environment: {'PULUMI_DART_RELEASE_REPO': 'env/repo'},
        isLinux: true,
        isMacOS: false,
        createTempDir: Directory.systemTemp.createTemp,
        downloadFile: (url, file) async {
          capturedUrl = url;
          await file.writeAsString('#!/usr/bin/env bash\n');
        },
        makeExecutable: (_) async {},
        runInstaller: (_, _) async => 0,
      );

      expect(exitCode, 0);
      expect(
        capturedUrl,
        buildInstallerScriptUrl(repo: 'flag/repo', ref: defaultPulumiDartRef),
      );
    });

    test('propagates installer exit code', () async {
      final exitCode = await installLanguageHost(
        const [],
        isLinux: true,
        isMacOS: false,
        createTempDir: Directory.systemTemp.createTemp,
        downloadFile: (_, file) async {
          await file.writeAsString('#!/usr/bin/env bash\n');
        },
        makeExecutable: (_) async {},
        runInstaller: (_, _) async => 17,
      );

      expect(exitCode, 17);
    });

    test('cleans up temp directory after running', () async {
      late Directory createdDir;

      final exitCode = await installLanguageHost(
        const [],
        isLinux: true,
        isMacOS: false,
        createTempDir: (prefix) async {
          createdDir = await Directory.systemTemp.createTemp(prefix);
          return createdDir;
        },
        downloadFile: (_, file) async {
          await file.writeAsString('#!/usr/bin/env bash\n');
        },
        makeExecutable: (_) async {},
        runInstaller: (_, _) async => 0,
      );

      expect(exitCode, 0);
      expect(await createdDir.exists(), isFalse);
    });
  });
}
