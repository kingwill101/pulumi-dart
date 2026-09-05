// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFilesFileSystem.
class GetFilesFileSystemResult {
  /// ARN of the file system.
  final String? arn;
  /// S3 bucket ARN.
  final String? bucket;
  /// Creation time.
  final String? creationTime;
  final String? id;
  /// KMS key ID for encryption.
  final String? kmsKeyId;
  /// File system name.
  final String? name;
  /// AWS account ID of the owner.
  final String? ownerId;
  /// S3 bucket prefix.
  final String? prefix;
  final String? region;
  /// IAM role ARN for S3 access.
  final String? roleArn;
  /// File system status.
  final String? status;
  /// Status message.
  final String? statusMessage;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetFilesFileSystemResult].
  /// [arn] ARN of the file system.
  /// [bucket] S3 bucket ARN.
  /// [creationTime] Creation time.
  /// [id] Optional.
  /// [kmsKeyId] KMS key ID for encryption.
  /// [name] File system name.
  /// [ownerId] AWS account ID of the owner.
  /// [prefix] S3 bucket prefix.
  /// [region] Optional.
  /// [roleArn] IAM role ARN for S3 access.
  /// [status] File system status.
  /// [statusMessage] Status message.
  /// [tags] Map of tags assigned to the resource.
  const GetFilesFileSystemResult({
    this.arn,
    this.bucket,
    this.creationTime,
    this.id,
    this.kmsKeyId,
    this.name,
    this.ownerId,
    this.prefix,
    this.region,
    this.roleArn,
    this.status,
    this.statusMessage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bucket': ?bucket,
      'creationTime': ?creationTime,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'ownerId': ?ownerId,
      'prefix': ?prefix,
      'region': ?region,
      'roleArn': ?roleArn,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
    };
  }

  factory GetFilesFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
