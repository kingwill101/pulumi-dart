// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FileSystemConfig
class FileSystemConfig {
  /// The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.
  final pulumi.Input<String?>? arn;
  /// The path where the function can access the file system, starting with ``/mnt/``.
  final pulumi.Input<String?>? localMountPath;

  /// Creates a new [FileSystemConfig].
  /// [arn] The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.
  /// [localMountPath] The path where the function can access the file system, starting with ``/mnt/``.
  const FileSystemConfig({
    this.arn,
    this.localMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'localMountPath': ?localMountPath,
    };
  }

  factory FileSystemConfig.fromMap(Map<String, dynamic> map) {
    return FileSystemConfig(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localMountPath: (() { final guardedValue = map['localMountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
