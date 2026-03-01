// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageConfig
class ImageConfig {
  /// Specifies parameters that you want to pass in with ENTRYPOINT. You can specify a maximum of 1,500 parameters in the list.
  final List<String>? command;
  /// Specifies the entry point to their application, which is typically the location of the runtime executable. You can specify a maximum of 1,500 string entries in the list.
  final List<String>? entryPoint;
  /// Specifies the working directory. The length of the directory string cannot exceed 1,000 characters.
  final String? workingDirectory;

  /// Creates a new [ImageConfig].
  /// [command] Specifies parameters that you want to pass in with ENTRYPOINT. You can specify a maximum of 1,500 parameters in the list.
  /// [entryPoint] Specifies the entry point to their application, which is typically the location of the runtime executable. You can specify a maximum of 1,500 string entries in the list.
  /// [workingDirectory] Specifies the working directory. The length of the directory string cannot exceed 1,000 characters.
  ImageConfig({
    this.command,
    this.entryPoint,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'entryPoint': ?entryPoint,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ImageConfig.fromMap(Map<String, dynamic> map) {
    return ImageConfig(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      entryPoint: map['entryPoint'] == null ? null : (map['entryPoint'] as List).cast<String>(),
      workingDirectory: map['workingDirectory'] == null ? null : map['workingDirectory'] as String,
    );
  }
}

