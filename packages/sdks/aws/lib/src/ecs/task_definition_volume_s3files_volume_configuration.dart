// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionVolumeS3filesVolumeConfiguration {
  /// Full ARN of the S3 Files access point to use. If configured, `rootDirectory` must either be omitted or set to `"/"`.
  final pulumi.Input<String>? accessPointArn;
  /// Full ARN of the S3 Files file system to mount.
  final pulumi.Input<String> fileSystemArn;
  /// Directory within the Amazon S3 Files file system to mount as the root directory.
  final pulumi.Input<String>? rootDirectory;
  /// Port to use for sending encrypted data between the ECS host and the S3 Files file system.
  final pulumi.Input<int>? transitEncryptionPort;

  /// Creates a new [TaskDefinitionVolumeS3filesVolumeConfiguration].
  /// [accessPointArn] Full ARN of the S3 Files access point to use. If configured, `rootDirectory` must either be omitted or set to `"/"`.
  /// [fileSystemArn] Full ARN of the S3 Files file system to mount.
  /// [rootDirectory] Directory within the Amazon S3 Files file system to mount as the root directory.
  /// [transitEncryptionPort] Port to use for sending encrypted data between the ECS host and the S3 Files file system.
  const TaskDefinitionVolumeS3filesVolumeConfiguration({
    this.accessPointArn,
    required this.fileSystemArn,
    this.rootDirectory,
    this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'fileSystemArn': fileSystemArn,
      'rootDirectory': ?rootDirectory,
      'transitEncryptionPort': ?transitEncryptionPort,
    };
  }

  factory TaskDefinitionVolumeS3filesVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeS3filesVolumeConfiguration(
      accessPointArn: (() { final guardedValue = map['accessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemArn: pulumi.Input.fromValue(map['fileSystemArn'] as String),
      rootDirectory: (() { final guardedValue = map['rootDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitEncryptionPort: (() { final guardedValue = map['transitEncryptionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
