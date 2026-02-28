// ignore_for_file: unused_element, unnecessary_cast

class InfrastructureConfigurationLoggingS3Logs {
  /// Name of the S3 Bucket.
  ///
  /// The following arguments are optional:
  final String s3BucketName;

  /// Prefix to use for S3 logs. Defaults to `/`.
  final String? s3KeyPrefix;

  /// Creates a new [InfrastructureConfigurationLoggingS3Logs].
  /// [s3BucketName] Name of the S3 Bucket.
  /// [s3KeyPrefix] Prefix to use for S3 logs. Defaults to `/`.
  InfrastructureConfigurationLoggingS3Logs({
    required this.s3BucketName,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketName'] = s3BucketName;
    final s3KeyPrefixValue = s3KeyPrefix;
    if (s3KeyPrefixValue != null) {
      map['s3KeyPrefix'] = s3KeyPrefixValue;
    }
    return map;
  }

  factory InfrastructureConfigurationLoggingS3Logs.fromMap(
      Map<String, dynamic> map) {
    return InfrastructureConfigurationLoggingS3Logs(
      s3BucketName: map['s3BucketName'] as String,
      s3KeyPrefix:
          map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
    );
  }
}
