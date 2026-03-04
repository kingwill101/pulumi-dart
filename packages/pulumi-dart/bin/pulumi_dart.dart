import 'dart:convert';
import 'dart:io';

const _defaultRepo = 'kingwill101/pulumi-dart';
const _defaultRef = 'main';

Future<void> main(List<String> args) async {
  if (args.isEmpty || args.first == '-h' || args.first == '--help') {
    _printUsage();
    return;
  }

  switch (args.first) {
    case 'install-language-host':
      await _installLanguageHost(args.skip(1).toList());
      return;
    default:
      stderr.writeln('Unknown command: ${args.first}');
      _printUsage();
      exitCode = 2;
  }
}

void _printUsage() {
  stdout.writeln('''
Pulumi Dart utility CLI

Usage:
  pulumi-dart install-language-host [--version <tag>] [--install-dir <dir>] [--repo <owner/repo>] [--ref <git-ref>]

Examples:
  pulumi-dart install-language-host
  pulumi-dart install-language-host --version v0.1.0
  pulumi-dart install-language-host --install-dir \$HOME/bin
''');
}

Future<void> _installLanguageHost(List<String> args) async {
  if (!Platform.isLinux && !Platform.isMacOS) {
    stderr.writeln(
      'install-language-host currently supports Linux/macOS through bash installer execution.',
    );
    stderr.writeln(
      'Use scripts/install-pulumi-language-dart.sh or download release assets manually on this platform.',
    );
    exitCode = 1;
    return;
  }

  final repo =
      _readOption(args, '--repo') ??
      Platform.environment['PULUMI_DART_RELEASE_REPO'] ??
      _defaultRepo;
  final ref = _readOption(args, '--ref') ?? _defaultRef;
  final version = _readOption(args, '--version');
  final installDir = _readOption(args, '--install-dir');

  final scriptUrl =
      'https://raw.githubusercontent.com/$repo/$ref/scripts/install-pulumi-language-dart.sh';
  final tempDir = await Directory.systemTemp.createTemp('pulumi-dart-install-');
  final scriptFile = File('${tempDir.path}/install-pulumi-language-dart.sh');

  try {
    await _downloadFile(scriptUrl, scriptFile);
    await Process.run('chmod', ['0755', scriptFile.path]);

    final scriptArgs = <String>[];
    if (version != null && version.isNotEmpty) {
      scriptArgs.addAll(['--version', version]);
    }
    if (installDir != null && installDir.isNotEmpty) {
      scriptArgs.addAll(['--install-dir', installDir]);
    }
    scriptArgs.addAll(['--repo', repo]);

    stdout.writeln('Running installer script from: $scriptUrl');
    final process = await Process.start('bash', [
      scriptFile.path,
      ...scriptArgs,
    ], mode: ProcessStartMode.inheritStdio);
    final code = await process.exitCode;
    if (code != 0) {
      exitCode = code;
    }
  } finally {
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  }
}

String? _readOption(List<String> args, String flag) {
  for (var i = 0; i < args.length; i++) {
    if (args[i] == flag && i + 1 < args.length) {
      return args[i + 1];
    }
  }
  return null;
}

Future<void> _downloadFile(String url, File file) async {
  final client = HttpClient();
  try {
    final request = await client.getUrl(Uri.parse(url));
    request.headers.set(HttpHeaders.userAgentHeader, 'pulumi-dart-installer');
    final response = await request.close();
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final body = await utf8.decoder.bind(response).join();
      throw ProcessException(
        'download',
        [url],
        'Failed to download installer script (HTTP ${response.statusCode}): $body',
      );
    }
    await response.pipe(file.openWrite());
  } finally {
    client.close(force: true);
  }
}
