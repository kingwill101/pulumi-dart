// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination {
  /// Account ID that owns the destination bucket.
  final String? bucketAccountId;

  /// ARN of the destination bucket.
  final String bucketArn;

  /// Output format of exported analytics data. Allowed values: `CSV`. Default value: `CSV`.
  final String? format;

  /// Prefix to append to exported analytics data.
  final String? prefix;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination].
  /// [bucketAccountId] Account ID that owns the destination bucket.
  /// [bucketArn] ARN of the destination bucket.
  /// [format] Output format of exported analytics data. Allowed values: `CSV`. Default value: `CSV`.
  /// [prefix] Prefix to append to exported analytics data.
  AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination({
    this.bucketAccountId,
    required this.bucketArn,
    this.format,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketAccountId': ?bucketAccountId,
      'bucketArn': bucketArn,
      'format': ?format,
      'prefix': ?prefix,
    };
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination(
      bucketAccountId: map['bucketAccountId'] == null
          ? null
          : map['bucketAccountId'] as String,
      bucketArn: map['bucketArn'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
