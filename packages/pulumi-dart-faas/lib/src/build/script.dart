/// Renders the local command used to compile and archive a Dart executable.
String renderDartBuildScript({
  required String dartExecutable,
  required String entryPoint,
  required String binaryPath,
  required String archivePath,
  required String targetOs,
  required String targetArch,
}) {
  final binaryDirectory = _directoryName(binaryPath);
  final stagingDirectory = _directoryName(binaryDirectory);
  return '''
set -euo pipefail
rm -rf ${_quote(stagingDirectory)} ${_quote(archivePath)}
mkdir -p ${_quote(binaryDirectory)}

${_quote(dartExecutable)} compile exe ${_quote(entryPoint)} -o ${_quote(binaryPath)} --target-os=${_quote(targetOs)} --target-arch=${_quote(targetArch)}
tar -czf ${_quote(archivePath)} -C ${_quote(stagingDirectory)} .
''';
}

String _directoryName(String path) {
  final separator = path.lastIndexOf('/');
  return separator < 0 ? '.' : path.substring(0, separator);
}

String _quote(String value) => "'${value.replaceAll("'", "'\"'\"'")}'";
