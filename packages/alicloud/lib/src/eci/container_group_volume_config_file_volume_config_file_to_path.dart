// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final String? content;
  final String? path;

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
      content: map['content'] == null ? null : map['content'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

