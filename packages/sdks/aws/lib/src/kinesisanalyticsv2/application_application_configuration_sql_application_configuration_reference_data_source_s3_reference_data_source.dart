// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource {
  /// The ARN of the S3 bucket.
  final String bucketArn;
  /// The object key name containing the reference data.
  final String fileKey;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource].
  /// [bucketArn] The ARN of the S3 bucket.
  /// [fileKey] The object key name containing the reference data.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource({
    required this.bucketArn,
    required this.fileKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource(
      bucketArn: map['bucketArn'] as String,
      fileKey: map['fileKey'] as String,
    );
  }
}

