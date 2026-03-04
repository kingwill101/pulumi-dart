// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionFileSystemConfig {
  /// ARN of the Amazon EFS Access Point.
  final pulumi.Input<String> arn;

  /// Path where the function can access the file system. Must start with `/mnt/`.
  final pulumi.Input<String> localMountPath;

  /// Creates a new [FunctionFileSystemConfig].
  /// [arn] ARN of the Amazon EFS Access Point.
  /// [localMountPath] Path where the function can access the file system. Must start with `/mnt/`.
  FunctionFileSystemConfig({required this.arn, required this.localMountPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'localMountPath': localMountPath};
  }

  factory FunctionFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return FunctionFileSystemConfig(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      localMountPath: pulumi.Input.fromValue(map['localMountPath'] as String),
    );
  }
}
