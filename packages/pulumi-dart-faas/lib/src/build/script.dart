import 'target.dart';

/// Renders the local command used to compile and archive a Dart executable.
String renderDartBuildScript({
  required String dartExecutable,
  required String entryPoint,
  required String binaryPath,
  required String archivePath,
  required String targetOs,
  required String targetArch,
  List<String> arguments = const [],
}) {
  final binaryDirectory = _directoryName(binaryPath);
  final stagingDirectory = _directoryName(binaryDirectory);
  return '''
set -eu
rm -rf ${_quote(stagingDirectory)} ${_quote(archivePath)}
mkdir -p ${_quote(binaryDirectory)}

${_quote(dartExecutable)} compile exe --target-os=${_quote(targetOs)} --target-arch=${_quote(targetArch)}${_arguments(arguments)} -o ${_quote(binaryPath)} ${_quote(entryPoint)}
tar -czf ${_quote(archivePath)} -C ${_quote(stagingDirectory)} .
''';
}

String _directoryName(String path) {
  final separator = path.lastIndexOf('/');
  return separator < 0 ? '.' : path.substring(0, separator);
}

String _quote(String value) => "'${value.replaceAll("'", "'\"'\"'")}'";

String _arguments(List<String> values) =>
    values.isEmpty ? '' : ' ${values.map(_quote).join(' ')}';

String renderDartCompilerScript({
  required String dartExecutable,
  required DartCompilerFrontend frontend,
  required String entryPoint,
  required String outputPath,
  required String archivePath,
  List<String> arguments = const [],
}) {
  final outputDirectory = _directoryName(outputPath);
  final stagingDirectory = _directoryName(outputDirectory);
  return '''
set -eu
rm -rf ${_quote(stagingDirectory)} ${_quote(archivePath)}
mkdir -p ${_quote(outputDirectory)}

${_quote(dartExecutable)} compile ${_quote(frontend.command)}${_arguments(arguments)} -o ${_quote(outputPath)} ${_quote(entryPoint)}
tar -czf ${_quote(archivePath)} -C ${_quote(stagingDirectory)} .
''';
}

/// Renders a `dart build cli` command and archives the resulting bundle.
String renderDartCliBuildScript({
  required String dartExecutable,
  required String entryPoint,
  required String outputDirectory,
  required String archivePath,
}) =>
    '''
set -eu
rm -rf ${_quote(outputDirectory)} ${_quote(archivePath)}
mkdir -p ${_quote(outputDirectory)}

${_quote(dartExecutable)} build cli --target=${_quote(entryPoint)} --output=${_quote(outputDirectory)}
tar -czf ${_quote(archivePath)} -C ${_quote(outputDirectory)} .
''';

String prependBuildRunner(String script, {required String dartExecutable}) =>
    '''
set -eu
${_quote(dartExecutable)} run build_runner build --delete-conflicting-outputs
${script.replaceFirst('set -eu\n', '')}''';
