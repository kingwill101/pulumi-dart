// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentStorageConfigurationEfs {
  /// Id of the EFS filesystem to mount.
  final pulumi.Input<String> fileSystemId;
  /// Path to mount the filesystem on, must start with `/m2/mount/`.
  final pulumi.Input<String> mountPoint;

  /// Creates a new [EnvironmentStorageConfigurationEfs].
  /// [fileSystemId] Id of the EFS filesystem to mount.
  /// [mountPoint] Path to mount the filesystem on, must start with `/m2/mount/`.
  EnvironmentStorageConfigurationEfs({
    required this.fileSystemId,
    required this.mountPoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'mountPoint': mountPoint,
    };
  }

  factory EnvironmentStorageConfigurationEfs.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfigurationEfs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      mountPoint: (map['mountPoint'] as String).input(),
    );
  }
}

