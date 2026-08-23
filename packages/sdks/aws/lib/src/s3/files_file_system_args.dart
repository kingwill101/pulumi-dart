// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_file_system_timeouts.dart';

/// {@template pulumi_s3_files_file_system_files_file_system_args_doc}
/// The set of arguments for FilesFileSystem.
/// {@endtemplate}
/// {@macro pulumi_s3_files_file_system_files_file_system_args_doc}
class FilesFileSystemArgs {
  /// Set to `true` to acknowledge and accept any warnings related to the bucket configuration. If not specified, the operation may fail when such warnings are present. For example, warnings may be raised when creating a file system scoped to a prefix containing a large number of objects (approximately 12 million objects). See [the AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-files-synchronization.html#s3-files-sync-rename-move) for more details.
  final pulumi.Input<bool>? acceptBucketWarning;
  /// S3 bucket ARN. Changing this value forces replacement.
  final pulumi.Input<String> bucket;
  /// KMS key ID for encryption. Changing this value forces replacement.
  final pulumi.Input<String>? kmsKeyId;
  /// S3 bucket prefix. Changing this value forces replacement.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IAM role ARN for S3 access. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<FilesFileSystemTimeouts>? timeouts;

  /// Creates a new [FilesFileSystemArgs].
  /// [acceptBucketWarning] Set to `true` to acknowledge and accept any warnings related to the bucket configuration. If not specified, the operation may fail when such warnings are present. For example, warnings may be raised when creating a file system scoped to a prefix containing a large number of objects (approximately 12 million objects). See [the AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-files-synchronization.html#s3-files-sync-rename-move) for more details.
  /// [bucket] S3 bucket ARN. Changing this value forces replacement.
  /// [kmsKeyId] KMS key ID for encryption. Changing this value forces replacement.
  /// [prefix] S3 bucket prefix. Changing this value forces replacement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] IAM role ARN for S3 access. Changing this value forces replacement.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const FilesFileSystemArgs({
    this.acceptBucketWarning,
    required this.bucket,
    this.kmsKeyId,
    this.prefix,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptBucketWarning': ?acceptBucketWarning,
      'bucket': bucket,
      'kmsKeyId': ?kmsKeyId,
      'prefix': ?prefix,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesFileSystemTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FilesFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FilesFileSystemArgs(
      acceptBucketWarning: (() { final guardedValue = map['acceptBucketWarning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesFileSystemTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
