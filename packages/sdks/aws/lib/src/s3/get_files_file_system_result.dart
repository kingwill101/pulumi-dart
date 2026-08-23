// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFilesFileSystem.
class GetFilesFileSystemResult {
  /// ARN of the file system.
  final String arn;
  /// S3 bucket ARN.
  final String bucket;
  /// Creation time.
  final String creationTime;
  final String id;
  /// KMS key ID for encryption.
  final String kmsKeyId;
  /// File system name.
  final String name;
  /// AWS account ID of the owner.
  final String ownerId;
  /// S3 bucket prefix.
  final String prefix;
  final String region;
  /// IAM role ARN for S3 access.
  final String roleArn;
  /// File system status.
  final String status;
  /// Status message.
  final String statusMessage;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetFilesFileSystemResult].
  /// [arn] ARN of the file system.
  /// [bucket] S3 bucket ARN.
  /// [creationTime] Creation time.
  /// [id] Required.
  /// [kmsKeyId] KMS key ID for encryption.
  /// [name] File system name.
  /// [ownerId] AWS account ID of the owner.
  /// [prefix] S3 bucket prefix.
  /// [region] Required.
  /// [roleArn] IAM role ARN for S3 access.
  /// [status] File system status.
  /// [statusMessage] Status message.
  /// [tags] Map of tags assigned to the resource.
  const GetFilesFileSystemResult({
    required this.arn,
    required this.bucket,
    required this.creationTime,
    required this.id,
    required this.kmsKeyId,
    required this.name,
    required this.ownerId,
    required this.prefix,
    required this.region,
    required this.roleArn,
    required this.status,
    required this.statusMessage,
    required this.tags,
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
      'prefix': prefix,
      'region': region,
      'roleArn': roleArn,
      'status': status,
      'statusMessage': statusMessage,
      'tags': tags,
    };
  }

  factory GetFilesFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemResult(
      arn: map['arn'] as String,
      bucket: map['bucket'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      prefix: map['prefix'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
