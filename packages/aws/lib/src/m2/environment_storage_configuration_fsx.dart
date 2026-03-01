// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentStorageConfigurationFsx {
  /// Id of the FSX filesystem to mount.
  final String fileSystemId;

  /// Path to mount the filesystem on, must start with `/m2/mount/`.
  final String mountPoint;

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
      fileSystemId: map['fileSystemId'] as String,
      mountPoint: map['mountPoint'] as String,
    );
  }
}
