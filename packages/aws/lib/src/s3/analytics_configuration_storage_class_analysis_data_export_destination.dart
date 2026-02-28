// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_configuration_storage_class_analysis_data_export_destination_s3_bucket_destination.dart';

class AnalyticsConfigurationStorageClassAnalysisDataExportDestination {
  /// Analytics data export currently only supports an S3 bucket destination (documented below).
  final AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination
      s3BucketDestination;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExportDestination].
  /// [s3BucketDestination] Analytics data export currently only supports an S3 bucket destination (documented below).
  AnalyticsConfigurationStorageClassAnalysisDataExportDestination({
    required this.s3BucketDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketDestination'] = s3BucketDestination.toMap();
    return map;
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExportDestination.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysisDataExportDestination(
      s3BucketDestination:
          AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination
              .fromMap(
                  (map['s3BucketDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
