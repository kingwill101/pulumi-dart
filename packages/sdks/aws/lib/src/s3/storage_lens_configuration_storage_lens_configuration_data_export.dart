// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_data_export_cloud_watch_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export_storage_lens_table_destination.dart';

class StorageLensConfigurationStorageLensConfigurationDataExport {
  /// Amazon CloudWatch publishing for S3 Storage Lens metrics. See `cloudWatchMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics?>? cloudWatchMetrics;
  /// Bucket where the S3 Storage Lens metrics export will be located. See `s3BucketDestination` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination?>? s3BucketDestination;
  /// S3 table bucket where the S3 Storage Lens metrics export will be located. See `storageLensTableDestination` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination?>? storageLensTableDestination;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExport].
  /// [cloudWatchMetrics] Amazon CloudWatch publishing for S3 Storage Lens metrics. See `cloudWatchMetrics` below for more details.
  /// [s3BucketDestination] Bucket where the S3 Storage Lens metrics export will be located. See `s3BucketDestination` below for more details.
  /// [storageLensTableDestination] S3 table bucket where the S3 Storage Lens metrics export will be located. See `storageLensTableDestination` below for more details.
  const StorageLensConfigurationStorageLensConfigurationDataExport({
    this.cloudWatchMetrics,
    this.s3BucketDestination,
    this.storageLensTableDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics, Map<String, dynamic>>(cloudWatchMetrics, (value) => value.toMap()),
      's3BucketDestination': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination, Map<String, dynamic>>(s3BucketDestination, (value) => value.toMap()),
      'storageLensTableDestination': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination, Map<String, dynamic>>(storageLensTableDestination, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExport.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExport(
      cloudWatchMetrics: (() { final guardedValue = map['cloudWatchMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3BucketDestination: (() { final guardedValue = map['s3BucketDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageLensTableDestination: (() { final guardedValue = map['storageLensTableDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
