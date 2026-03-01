// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryErrorReportConfigurationS3Configuration {
  /// Name of the S3 bucket under which error reports will be created.
  final String bucketName;

  /// Encryption at rest options for the error reports. If no encryption option is specified, Timestream will choose `SSE_S3` as default. Valid values are `SSE_S3`, `SSE_KMS`.
  final String? encryptionOption;

  /// Prefix for the error report key.
  final String? objectKeyPrefix;

  /// Creates a new [ScheduledQueryErrorReportConfigurationS3Configuration].
  /// [bucketName] Name of the S3 bucket under which error reports will be created.
  /// [encryptionOption] Encryption at rest options for the error reports. If no encryption option is specified, Timestream will choose `SSE_S3` as default. Valid values are `SSE_S3`, `SSE_KMS`.
  /// [objectKeyPrefix] Prefix for the error report key.
  ScheduledQueryErrorReportConfigurationS3Configuration({
    required this.bucketName,
    this.encryptionOption,
    this.objectKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'encryptionOption': ?encryptionOption,
      'objectKeyPrefix': ?objectKeyPrefix,
    };
  }

  factory ScheduledQueryErrorReportConfigurationS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryErrorReportConfigurationS3Configuration(
      bucketName: map['bucketName'] as String,
      encryptionOption: map['encryptionOption'] == null
          ? null
          : map['encryptionOption'] as String,
      objectKeyPrefix: map['objectKeyPrefix'] == null
          ? null
          : map['objectKeyPrefix'] as String,
    );
  }
}
