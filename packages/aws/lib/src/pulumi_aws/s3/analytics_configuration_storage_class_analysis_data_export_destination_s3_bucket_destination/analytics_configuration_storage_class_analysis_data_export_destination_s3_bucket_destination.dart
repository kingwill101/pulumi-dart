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

  AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination({
    this.bucketAccountId,
    required this.bucketArn,
    this.format,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketAccountIdValue = bucketAccountId;
    if (bucketAccountIdValue != null) {
      map['bucketAccountId'] = bucketAccountIdValue;
    }
    map['bucketArn'] = bucketArn;
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination.fromMap(
      Map<String, dynamic> map) {
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
