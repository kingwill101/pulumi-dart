// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentStorageConfigurationFsx {
  /// Id of the FSX filesystem to mount.
  final pulumi.Input<String> fileSystemId;

  /// Path to mount the filesystem on, must start with `/m2/mount/`.
  final pulumi.Input<String> mountPoint;

  /// Creates a new [EnvironmentStorageConfigurationFsx].
  /// [fileSystemId] Id of the FSX filesystem to mount.
  /// [mountPoint] Path to mount the filesystem on, must start with `/m2/mount/`.
  EnvironmentStorageConfigurationFsx({
    required this.fileSystemId,
    required this.mountPoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'mountPoint': mountPoint,
    };
  }

  factory EnvironmentStorageConfigurationFsx.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfigurationFsx(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
    );
  }
}
