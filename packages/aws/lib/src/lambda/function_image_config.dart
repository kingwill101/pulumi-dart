// ignore_for_file: unused_element, unnecessary_cast


class FunctionImageConfig {
  /// Parameters to pass to the container image.
  final List<String>? commands;
  /// Entry point to your application.
  final List<String>? entryPoints;
  /// Working directory for the container image.
  final String? workingDirectory;

  /// Creates a new [FunctionImageConfig].
  /// [commands] Parameters to pass to the container image.
  /// [entryPoints] Entry point to your application.
  /// [workingDirectory] Working directory for the container image.
  FunctionImageConfig({
    this.commands,
    this.entryPoints,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'entryPoints': ?entryPoints,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory FunctionImageConfig.fromMap(Map<String, dynamic> map) {
    return FunctionImageConfig(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      entryPoints: map['entryPoints'] == null ? null : (map['entryPoints'] as List).cast<String>(),
      workingDirectory: map['workingDirectory'] == null ? null : map['workingDirectory'] as String,
    );
  }
}

