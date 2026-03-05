import 'dart:convert';
import 'dart:io';

const defaultPulumiDartRepo = 'kingwill101/pulumi-dart';
const defaultPulumiDartRef = 'main';

/// Runs the `pulumi-dart` utility CLI and returns the desired process exit
/// code.
Future<int> runPulumiDartCli(
  List<String> args, {
  Map<String, String>? environment,
  bool? isLinux,
  bool? isMacOS,
  StringSink? out,
  StringSink? err,
  Future<Directory> Function(String prefix)? createTempDir,
  Future<void> Function(String url, File file)? downloadFile,
  Future<void> Function(String path)? makeExecutable,
  Future<int> Function(String scriptPath, List<String> args)? runInstaller,
}) async {
  final stdoutSink = out ?? stdout;
  final stderrSink = err ?? stderr;

  if (args.isEmpty || args.first == '-h' || args.first == '--help') {
    printUsage(stdoutSink);
    return 0;
  }

  switch (args.first) {
    case 'install-language-host':
      return installLanguageHost(
        args.skip(1).toList(),
        environment: environment,
        isLinux: isLinux,
        isMacOS: isMacOS,
        out: stdoutSink,
        err: stderrSink,
        createTempDir: createTempDir,
        downloadFile: downloadFile,
        makeExecutable: makeExecutable,
        runInstaller: runInstaller,
      );
    default:
      stderrSink.writeln('Unknown command: ${args.first}');
      printUsage(stdoutSink);
      return 2;
  }
}

/// Prints CLI usage text.
void printUsage(StringSink out) {
  out.writeln('''
Pulumi Dart utility CLI

Usage:
  pulumi-dart install-language-host [--version <tag>] [--install-dir <dir>] [--repo <owner/repo>] [--ref <git-ref>]

Examples:
  pulumi-dart install-language-host
  pulumi-dart install-language-host --version v0.1.0
  pulumi-dart install-language-host --install-dir \$HOME/bin
''');
}

/// Installs `pulumi-language-dart` via the repository installer script.
Future<int> installLanguageHost(
  List<String> args, {
  Map<String, String>? environment,
  bool? isLinux,
  bool? isMacOS,
  StringSink? out,
  StringSink? err,
  Future<Directory> Function(String prefix)? createTempDir,
  Future<void> Function(String url, File file)? downloadFile,
  Future<void> Function(String path)? makeExecutable,
  Future<int> Function(String scriptPath, List<String> args)? runInstaller,
}) async {
  final env = environment ?? Platform.environment;
  final stdoutSink = out ?? stdout;
  final stderrSink = err ?? stderr;
  final linux = isLinux ?? Platform.isLinux;
  final macos = isMacOS ?? Platform.isMacOS;

  if (!linux && !macos) {
    stderrSink.writeln(
      'install-language-host currently supports Linux/macOS through bash installer execution.',
    );
    stderrSink.writeln(
      'Use scripts/install-pulumi-language-dart.sh or download release assets manually on this platform.',
    );
    return 1;
  }

  final repo =
      readOption(args, '--repo') ??
      env['PULUMI_DART_RELEASE_REPO'] ??
      defaultPulumiDartRepo;
  final ref = readOption(args, '--ref') ?? defaultPulumiDartRef;
  final version = readOption(args, '--version');
  final installDir = readOption(args, '--install-dir');

  final scriptUrl = buildInstallerScriptUrl(repo: repo, ref: ref);
  final createDir =
      createTempDir ?? ((prefix) => Directory.systemTemp.createTemp(prefix));
  final fetchScript = downloadFile ?? _downloadFile;
  final markExecutable = makeExecutable ?? _makeExecutable;
  final invokeInstaller = runInstaller ?? _runInstaller;

  final tempDir = await createDir('pulumi-dart-install-');
  final scriptFile = File('${tempDir.path}/install-pulumi-language-dart.sh');

  try {
    await fetchScript(scriptUrl, scriptFile);
    await markExecutable(scriptFile.path);

    final scriptArgs = buildInstallerScriptArgs(
      repo: repo,
      version: version,
      installDir: installDir,
    );

    stdoutSink.writeln('Running installer script from: $scriptUrl');
    return await invokeInstaller(scriptFile.path, scriptArgs);
  } finally {
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  }
}

/// Builds the raw GitHub URL for the installer shell script.
String buildInstallerScriptUrl({required String repo, required String ref}) {
  return 'https://raw.githubusercontent.com/$repo/$ref/scripts/install-pulumi-language-dart.sh';
}

/// Builds the installer shell arguments forwarded to the script.
List<String> buildInstallerScriptArgs({
  required String repo,
  String? version,
  String? installDir,
}) {
  final scriptArgs = <String>[];
  if (version != null && version.isNotEmpty) {
    scriptArgs.addAll(['--version', version]);
  }
  if (installDir != null && installDir.isNotEmpty) {
    scriptArgs.addAll(['--install-dir', installDir]);
  }
  scriptArgs.addAll(['--repo', repo]);
  return scriptArgs;
}

/// Reads an option value from [args] when present.
String? readOption(List<String> args, String flag) {
  for (var i = 0; i < args.length; i++) {
    if (args[i] == flag && i + 1 < args.length) {
      return args[i + 1];
    }
  }
  return null;
}

Future<void> _makeExecutable(String path) async {
  final result = await Process.run('chmod', ['0755', path]);
  if (result.exitCode != 0) {
    throw ProcessException(
      'chmod',
      ['0755', path],
      '${result.stderr}',
      result.exitCode,
    );
  }
}

Future<int> _runInstaller(String scriptPath, List<String> args) async {
  final process = await Process.start('bash', [scriptPath, ...args]);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  return process.exitCode;
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
