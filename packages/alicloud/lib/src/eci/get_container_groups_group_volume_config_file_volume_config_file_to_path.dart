// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final String content;
  /// The relative file path.
  final String path;

  /// Creates a new [GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath].
  /// [content] The content of the configuration file. Maximum size: 32 KB.
  /// [path] The relative file path.
  GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath({
    required this.content,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'path': path,
    };
  }

  factory GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath(
      content: map['content'] as String,
      path: map['path'] as String,
    );
  }
}

