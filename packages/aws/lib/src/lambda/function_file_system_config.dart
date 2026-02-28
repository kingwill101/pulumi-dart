// ignore_for_file: unused_element, unnecessary_cast

class FunctionFileSystemConfig {
  /// ARN of the Amazon EFS Access Point.
  final String arn;

  /// Path where the function can access the file system. Must start with `/mnt/`.
  final String localMountPath;

  /// Creates a new [FunctionFileSystemConfig].
  /// [arn] ARN of the Amazon EFS Access Point.
  /// [localMountPath] Path where the function can access the file system. Must start with `/mnt/`.
  FunctionFileSystemConfig({
    required this.arn,
    required this.localMountPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['localMountPath'] = localMountPath;
    return map;
  }

  factory FunctionFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return FunctionFileSystemConfig(
      arn: map['arn'] as String,
      localMountPath: map['localMountPath'] as String,
    );
  }
}
