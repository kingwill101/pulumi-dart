// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterConfigurationExecuteCommandConfigurationLogConfiguration {
  /// Whether to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.
  final pulumi.Input<bool?>? cloudWatchEncryptionEnabled;
  /// Name of the CloudWatch log group to send logs to.
  final pulumi.Input<String?>? cloudWatchLogGroupName;
  /// Whether to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.
  final pulumi.Input<bool?>? s3BucketEncryptionEnabled;
  /// Name of the S3 bucket to send logs to.
  final pulumi.Input<String?>? s3BucketName;
  /// Optional folder in the S3 bucket to place logs in.
  final pulumi.Input<String?>? s3KeyPrefix;

  /// Creates a new [ClusterConfigurationExecuteCommandConfigurationLogConfiguration].
  /// [cloudWatchEncryptionEnabled] Whether to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.
  /// [cloudWatchLogGroupName] Name of the CloudWatch log group to send logs to.
  /// [s3BucketEncryptionEnabled] Whether to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.
  /// [s3BucketName] Name of the S3 bucket to send logs to.
  /// [s3KeyPrefix] Optional folder in the S3 bucket to place logs in.
  const ClusterConfigurationExecuteCommandConfigurationLogConfiguration({
    this.cloudWatchEncryptionEnabled,
    this.cloudWatchLogGroupName,
    this.s3BucketEncryptionEnabled,
    this.s3BucketName,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchEncryptionEnabled': ?cloudWatchEncryptionEnabled,
      'cloudWatchLogGroupName': ?cloudWatchLogGroupName,
      's3BucketEncryptionEnabled': ?s3BucketEncryptionEnabled,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory ClusterConfigurationExecuteCommandConfigurationLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationExecuteCommandConfigurationLogConfiguration(
      cloudWatchEncryptionEnabled: (() { final guardedValue = map['cloudWatchEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cloudWatchLogGroupName: (() { final guardedValue = map['cloudWatchLogGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketEncryptionEnabled: (() { final guardedValue = map['s3BucketEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
