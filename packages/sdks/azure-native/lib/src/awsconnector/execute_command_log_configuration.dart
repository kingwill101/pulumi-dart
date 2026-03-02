// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExecuteCommandLogConfiguration
class ExecuteCommandLogConfiguration {
  /// Determines whether to use encryption on the CloudWatch logs. If not specified, encryption will be off.
  final pulumi.Input<bool>? cloudWatchEncryptionEnabled;
  /// The name of the CloudWatch log group to send logs to.  The CloudWatch log group must already be created.
  final pulumi.Input<String>? cloudWatchLogGroupName;
  /// The name of the S3 bucket to send logs to.  The S3 bucket must already be created.
  final pulumi.Input<String>? s3BucketName;
  /// Determines whether to use encryption on the S3 logs. If not specified, encryption is not used.
  final pulumi.Input<bool>? s3EncryptionEnabled;
  /// An optional folder in the S3 bucket to place logs in.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [ExecuteCommandLogConfiguration].
  /// [cloudWatchEncryptionEnabled] Determines whether to use encryption on the CloudWatch logs. If not specified, encryption will be off.
  /// [cloudWatchLogGroupName] The name of the CloudWatch log group to send logs to.  The CloudWatch log group must already be created.
  /// [s3BucketName] The name of the S3 bucket to send logs to.  The S3 bucket must already be created.
  /// [s3EncryptionEnabled] Determines whether to use encryption on the S3 logs. If not specified, encryption is not used.
  /// [s3KeyPrefix] An optional folder in the S3 bucket to place logs in.
  ExecuteCommandLogConfiguration({
    this.cloudWatchEncryptionEnabled,
    this.cloudWatchLogGroupName,
    this.s3BucketName,
    this.s3EncryptionEnabled,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchEncryptionEnabled': ?cloudWatchEncryptionEnabled,
      'cloudWatchLogGroupName': ?cloudWatchLogGroupName,
      's3BucketName': ?s3BucketName,
      's3EncryptionEnabled': ?s3EncryptionEnabled,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory ExecuteCommandLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ExecuteCommandLogConfiguration(
      cloudWatchEncryptionEnabled: map['cloudWatchEncryptionEnabled'] == null ? null : (map['cloudWatchEncryptionEnabled']! as bool).input(),
      cloudWatchLogGroupName: map['cloudWatchLogGroupName'] == null ? null : (map['cloudWatchLogGroupName']! as String).input(),
      s3BucketName: map['s3BucketName'] == null ? null : (map['s3BucketName']! as String).input(),
      s3EncryptionEnabled: map['s3EncryptionEnabled'] == null ? null : (map['s3EncryptionEnabled']! as bool).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : (map['s3KeyPrefix']! as String).input(),
    );
  }
}

