// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_file_system_timeouts.dart';

/// Input properties used for looking up and filtering FilesFileSystem resources.
class FilesFileSystemState {
  /// Set to `true` to acknowledge and accept any warnings related to the bucket configuration. If not specified, the operation may fail when such warnings are present. For example, warnings may be raised when creating a file system scoped to a prefix containing a large number of objects (approximately 12 million objects). See [the AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-files-synchronization.html#s3-files-sync-rename-move) for more details.
  final pulumi.Input<bool>? acceptBucketWarning;
  /// ARN of the file system.
  final pulumi.Input<String>? arn;
  /// S3 bucket ARN. Changing this value forces replacement.
  final pulumi.Input<String>? bucket;
  /// Creation time.
  final pulumi.Input<String>? creationTime;
  /// KMS key ID for encryption. Changing this value forces replacement.
  final pulumi.Input<String>? kmsKeyId;
  /// File system name.
  final pulumi.Input<String>? name;
  /// AWS account ID of the owner.
  final pulumi.Input<String>? ownerId;
  /// S3 bucket prefix. Changing this value forces replacement.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IAM role ARN for S3 access. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleArn;
  /// File system status.
  final pulumi.Input<String>? status;
  /// Status message.
  final pulumi.Input<String>? statusMessage;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<FilesFileSystemTimeouts>? timeouts;

  /// Creates a new [FilesFileSystemState].
  /// [acceptBucketWarning] Set to `true` to acknowledge and accept any warnings related to the bucket configuration. If not specified, the operation may fail when such warnings are present. For example, warnings may be raised when creating a file system scoped to a prefix containing a large number of objects (approximately 12 million objects). See [the AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-files-synchronization.html#s3-files-sync-rename-move) for more details.
  /// [arn] ARN of the file system.
  /// [bucket] S3 bucket ARN. Changing this value forces replacement.
  /// [creationTime] Creation time.
  /// [kmsKeyId] KMS key ID for encryption. Changing this value forces replacement.
  /// [name] File system name.
  /// [ownerId] AWS account ID of the owner.
  /// [prefix] S3 bucket prefix. Changing this value forces replacement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] IAM role ARN for S3 access. Changing this value forces replacement.
  /// [status] File system status.
  /// [statusMessage] Status message.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const FilesFileSystemState({
    this.acceptBucketWarning,
    this.arn,
    this.bucket,
    this.creationTime,
    this.kmsKeyId,
    this.name,
    this.ownerId,
    this.prefix,
    this.region,
    this.roleArn,
    this.status,
    this.statusMessage,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptBucketWarning': ?acceptBucketWarning,
      'arn': ?arn,
      'bucket': ?bucket,
      'creationTime': ?creationTime,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'ownerId': ?ownerId,
      'prefix': ?prefix,
      'region': ?region,
      'roleArn': ?roleArn,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesFileSystemTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FilesFileSystemState.fromMap(Map<String, dynamic> map) {
    return FilesFileSystemState(
      acceptBucketWarning: (() { final guardedValue = map['acceptBucketWarning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesFileSystemTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
