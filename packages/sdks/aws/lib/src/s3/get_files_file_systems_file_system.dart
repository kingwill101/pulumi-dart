// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFilesFileSystemsFileSystem {
  /// ARN of the file system.
  final pulumi.Input<String> arn;
  /// S3 bucket ARN.
  final pulumi.Input<String> bucket;
  /// Creation time.
  final pulumi.Input<String> creationTime;
  /// Identifier of the file system.
  final pulumi.Input<String> id;
  /// KMS key ID for encryption.
  final pulumi.Input<String> kmsKeyId;
  /// File system name.
  final pulumi.Input<String> name;
  /// AWS account ID of the owner.
  final pulumi.Input<String> ownerId;
  /// IAM role ARN for S3 access.
  final pulumi.Input<String> roleArn;
  /// File system status.
  final pulumi.Input<String> status;
  /// Status message.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [GetFilesFileSystemsFileSystem].
  /// [arn] ARN of the file system.
  /// [bucket] S3 bucket ARN.
  /// [creationTime] Creation time.
  /// [id] Identifier of the file system.
  /// [kmsKeyId] KMS key ID for encryption.
  /// [name] File system name.
  /// [ownerId] AWS account ID of the owner.
  /// [roleArn] IAM role ARN for S3 access.
  /// [status] File system status.
  /// [statusMessage] Status message.
  const GetFilesFileSystemsFileSystem({
    required this.arn,
    required this.bucket,
    required this.creationTime,
    required this.id,
    required this.kmsKeyId,
    required this.name,
    required this.ownerId,
    required this.roleArn,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'bucket': bucket,
      'creationTime': creationTime,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'name': name,
      'ownerId': ownerId,
      'roleArn': roleArn,
      'status': status,
      'statusMessage': statusMessage,
    };
  }

  factory GetFilesFileSystemsFileSystem.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemsFileSystem(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
