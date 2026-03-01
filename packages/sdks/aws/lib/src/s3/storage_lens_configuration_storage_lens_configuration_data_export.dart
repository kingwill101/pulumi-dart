// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_data_export_cloud_watch_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination.dart';

class StorageLensConfigurationStorageLensConfigurationDataExport {
  /// Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics? cloudWatchMetrics;
  /// The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination? s3BucketDestination;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExport].
  /// [cloudWatchMetrics] Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details.
  /// [s3BucketDestination] The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.
  StorageLensConfigurationStorageLensConfigurationDataExport({
    this.cloudWatchMetrics,
    this.s3BucketDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchMetrics': ?cloudWatchMetrics == null ? null : cloudWatchMetrics!.toMap(),
      's3BucketDestination': ?s3BucketDestination == null ? null : s3BucketDestination!.toMap(),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExport.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExport(
      cloudWatchMetrics: map['cloudWatchMetrics'] == null ? null : StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics.fromMap((map['cloudWatchMetrics'] as Map).cast<String, dynamic>()),
      s3BucketDestination: map['s3BucketDestination'] == null ? null : StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination.fromMap((map['s3BucketDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

