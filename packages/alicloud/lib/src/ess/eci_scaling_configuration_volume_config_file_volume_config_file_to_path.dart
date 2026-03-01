// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final String? content;
  /// The permissions on the ConfigFileVolume directory.
  final int? mode;
  /// The relative file path.
  final String? path;

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
    return <String, dynamic>{
      'content': ?content,
      'mode': ?mode,
      'path': ?path,
    };
  }

  factory EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath(
      content: map['content'] == null ? null : map['content'] as String,
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

