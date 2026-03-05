// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_storage_class_analysis_data_export_destination_s3_bucket_destination.dart';

class AnalyticsConfigurationStorageClassAnalysisDataExportDestination {
  /// Analytics data export currently only supports an S3 bucket destination (documented below).
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination> s3BucketDestination;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExportDestination].
  /// [s3BucketDestination] Analytics data export currently only supports an S3 bucket destination (documented below).
  AnalyticsConfigurationStorageClassAnalysisDataExportDestination({
    required this.s3BucketDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketDestination': pulumi.Input.mapInputValue<AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination, Map<String, dynamic>>(s3BucketDestination, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExportDestination.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysisDataExportDestination(
      s3BucketDestination: pulumi.Input.fromValue(AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestination.fromMap((map['s3BucketDestination']! as Map).cast<String, dynamic>())),
    );
  }
}

