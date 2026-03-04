// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final pulumi.Input<String>? content;

  /// The permissions on the ConfigFileVolume directory.
  final pulumi.Input<int>? mode;

  /// The relative file path.
  final pulumi.Input<String>? path;

  /// Creates a new [EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath].
  /// [content] The content of the configuration file. Maximum size: 32 KB.
  /// [mode] The permissions on the ConfigFileVolume directory.
  /// [path] The relative file path.
  EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath({
    this.content,
    this.mode,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': ?content, 'mode': ?mode, 'path': ?path};
  }

  factory EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
