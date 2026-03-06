// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageConfig
class ImageConfig {
  /// Specifies parameters that you want to pass in with ENTRYPOINT. You can specify a maximum of 1,500 parameters in the list.
  final pulumi.Input<List<String>>? command;
  /// Specifies the entry point to their application, which is typically the location of the runtime executable. You can specify a maximum of 1,500 string entries in the list.
  final pulumi.Input<List<String>>? entryPoint;
  /// Specifies the working directory. The length of the directory string cannot exceed 1,000 characters.
  final pulumi.Input<String>? workingDirectory;

  /// Creates a new [ImageConfig].
  /// [command] Specifies parameters that you want to pass in with ENTRYPOINT. You can specify a maximum of 1,500 parameters in the list.
  /// [entryPoint] Specifies the entry point to their application, which is typically the location of the runtime executable. You can specify a maximum of 1,500 string entries in the list.
  /// [workingDirectory] Specifies the working directory. The length of the directory string cannot exceed 1,000 characters.
  const ImageConfig({
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
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

