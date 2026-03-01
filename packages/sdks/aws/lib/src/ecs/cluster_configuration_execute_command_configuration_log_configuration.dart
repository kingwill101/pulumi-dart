// ignore_for_file: unused_element, unnecessary_cast


class ClusterConfigurationExecuteCommandConfigurationLogConfiguration {
  /// Whether to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.
  final bool? cloudWatchEncryptionEnabled;
  /// The name of the CloudWatch log group to send logs to.
  final String? cloudWatchLogGroupName;
  /// Whether to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.
  final bool? s3BucketEncryptionEnabled;
  /// Name of the S3 bucket to send logs to.
  final String? s3BucketName;
  /// Optional folder in the S3 bucket to place logs in.
  final String? s3KeyPrefix;

  /// Creates a new [ClusterConfigurationExecuteCommandConfigurationLogConfiguration].
  /// [cloudWatchEncryptionEnabled] Whether to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.
  /// [cloudWatchLogGroupName] The name of the CloudWatch log group to send logs to.
  /// [s3BucketEncryptionEnabled] Whether to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.
  /// [s3BucketName] Name of the S3 bucket to send logs to.
  /// [s3KeyPrefix] Optional folder in the S3 bucket to place logs in.
  ClusterConfigurationExecuteCommandConfigurationLogConfiguration({
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
      cloudWatchEncryptionEnabled: map['cloudWatchEncryptionEnabled'] == null ? null : map['cloudWatchEncryptionEnabled'] as bool,
      cloudWatchLogGroupName: map['cloudWatchLogGroupName'] == null ? null : map['cloudWatchLogGroupName'] as String,
      s3BucketEncryptionEnabled: map['s3BucketEncryptionEnabled'] == null ? null : map['s3BucketEncryptionEnabled'] as bool,
      s3BucketName: map['s3BucketName'] == null ? null : map['s3BucketName'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
    );
  }
}

