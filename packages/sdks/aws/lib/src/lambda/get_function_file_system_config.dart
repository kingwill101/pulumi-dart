// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionFileSystemConfig {
  /// ARN of the Amazon EFS Access Point that provides access to the file system.
  final pulumi.Input<String> arn;
  /// Path where the function can access the file system, starting with `/mnt/`.
  final pulumi.Input<String> localMountPath;

  /// Creates a new [GetFunctionFileSystemConfig].
  /// [arn] ARN of the Amazon EFS Access Point that provides access to the file system.
  /// [localMountPath] Path where the function can access the file system, starting with `/mnt/`.
  GetFunctionFileSystemConfig({
    required this.arn,
    required this.localMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'localMountPath': localMountPath,
    };
  }

  factory GetFunctionFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionFileSystemConfig(
      arn: (map['arn'] as String).input(),
      localMountPath: (map['localMountPath'] as String).input(),
    );
  }
}

