// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination {
  /// Account ID that owns the destination bucket.
  final pulumi.Input<String?>? bucketAccountId;
  /// ARN of the destination bucket.
  final pulumi.Input<String> bucketArn;
  /// Output format of exported analytics data. Allowed values: `CSV`. Default value: `CSV`.
  final pulumi.Input<String?>? format;
  /// Prefix to append to exported analytics data.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination].
  /// [bucketAccountId] Account ID that owns the destination bucket.
  /// [bucketArn] ARN of the destination bucket.
  /// [format] Output format of exported analytics data. Allowed values: `CSV`. Default value: `CSV`.
  /// [prefix] Prefix to append to exported analytics data.
  const AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination({
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

  factory AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination(
      bucketAccountId: (() { final guardedValue = map['bucketAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
