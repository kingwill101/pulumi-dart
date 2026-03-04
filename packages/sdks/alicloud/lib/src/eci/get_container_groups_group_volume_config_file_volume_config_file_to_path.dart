// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath {
  /// The content of the configuration file. Maximum size: 32 KB.
  final pulumi.Input<String> content;

  /// The relative file path.
  final pulumi.Input<String> path;

  /// Creates a new [GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath].
  /// [content] The content of the configuration file. Maximum size: 32 KB.
  /// [path] The relative file path.
  GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath({
    required this.content,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'path': path};
  }

  factory GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath(
      content: pulumi.Input.fromValue(map['content'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
