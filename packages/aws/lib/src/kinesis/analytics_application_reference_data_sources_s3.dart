// ignore_for_file: unused_element, unnecessary_cast


class AnalyticsApplicationReferenceDataSourcesS3 {
  /// The S3 Bucket ARN.
  final String bucketArn;
  /// The File Key name containing reference data.
  final String fileKey;
  /// The IAM Role ARN to read the data.
  final String roleArn;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesS3].
  /// [bucketArn] The S3 Bucket ARN.
  /// [fileKey] The File Key name containing reference data.
  /// [roleArn] The IAM Role ARN to read the data.
  AnalyticsApplicationReferenceDataSourcesS3({
    required this.bucketArn,
    required this.fileKey,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesS3.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesS3(
      bucketArn: map['bucketArn'] as String,
      fileKey: map['fileKey'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

