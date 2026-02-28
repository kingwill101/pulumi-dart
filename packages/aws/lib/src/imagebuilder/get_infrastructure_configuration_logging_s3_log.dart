// ignore_for_file: unused_element, unnecessary_cast

class GetInfrastructureConfigurationLoggingS3Log {
  /// Name of the S3 Bucket for logging.
  final String s3BucketName;

  /// Key prefix for S3 Bucket logging.
  final String s3KeyPrefix;

  /// Creates a new [GetInfrastructureConfigurationLoggingS3Log].
  /// [s3BucketName] Name of the S3 Bucket for logging.
  /// [s3KeyPrefix] Key prefix for S3 Bucket logging.
  GetInfrastructureConfigurationLoggingS3Log({
    required this.s3BucketName,
    required this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketName'] = s3BucketName;
    map['s3KeyPrefix'] = s3KeyPrefix;
    return map;
  }

  factory GetInfrastructureConfigurationLoggingS3Log.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationLoggingS3Log(
      s3BucketName: map['s3BucketName'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] as String,
    );
  }
}
