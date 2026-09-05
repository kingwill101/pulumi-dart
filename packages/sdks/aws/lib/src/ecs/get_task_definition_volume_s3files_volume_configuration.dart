// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionVolumeS3filesVolumeConfiguration {
  /// Full ARN of the S3 Files access point used.
  final pulumi.Input<String> accessPointArn;
  /// Full ARN of the S3 Files file system mounted.
  final pulumi.Input<String> fileSystemArn;
  /// Directory within the Amazon S3 Files file system to mount as the root directory.
  final pulumi.Input<String> rootDirectory;
  /// Port used for sending encrypted data between the ECS host and the S3 Files file system.
  final pulumi.Input<int> transitEncryptionPort;

  /// Creates a new [GetTaskDefinitionVolumeS3filesVolumeConfiguration].
  /// [accessPointArn] Full ARN of the S3 Files access point used.
  /// [fileSystemArn] Full ARN of the S3 Files file system mounted.
  /// [rootDirectory] Directory within the Amazon S3 Files file system to mount as the root directory.
  /// [transitEncryptionPort] Port used for sending encrypted data between the ECS host and the S3 Files file system.
  const GetTaskDefinitionVolumeS3filesVolumeConfiguration({
    required this.accessPointArn,
    required this.fileSystemArn,
    required this.rootDirectory,
    required this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': accessPointArn,
      'fileSystemArn': fileSystemArn,
      'rootDirectory': rootDirectory,
      'transitEncryptionPort': transitEncryptionPort,
    };
  }

  factory GetTaskDefinitionVolumeS3filesVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeS3filesVolumeConfiguration(
      accessPointArn: pulumi.Input.fromValue(map['accessPointArn'] as String),
      fileSystemArn: pulumi.Input.fromValue(map['fileSystemArn'] as String),
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
      transitEncryptionPort: pulumi.Input.fromValue((map['transitEncryptionPort'] as num).toInt()),
    );
  }
}
