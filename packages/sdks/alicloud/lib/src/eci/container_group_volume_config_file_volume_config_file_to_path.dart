// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final pulumi.Input<String>? content;
  final pulumi.Input<String>? path;

  /// Creates a new [ContainerGroupVolumeConfigFileVolumeConfigFileToPath].
  /// [content] The content of the configuration file. Maximum size: 32 KB.
  /// [path] Optional.
  ContainerGroupVolumeConfigFileVolumeConfigFileToPath({
    this.content,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'path': ?path,
    };
  }

  factory ContainerGroupVolumeConfigFileVolumeConfigFileToPath.fromMap(Map<String, dynamic> map) {
    return ContainerGroupVolumeConfigFileVolumeConfigFileToPath(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

