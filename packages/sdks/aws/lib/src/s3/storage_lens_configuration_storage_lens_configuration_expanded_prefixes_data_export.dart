// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export_s3_bucket_destination.dart';
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export_storage_lens_table_destination.dart';

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport {
  /// Bucket where the S3 Storage Lens expanded prefix metrics export will be located. See `s3BucketDestination` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestination?>? s3BucketDestination;
  /// S3 table bucket where the S3 Storage Lens expanded prefix metrics export will be located. See `storageLensTableDestination` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination?>? storageLensTableDestination;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport].
  /// [s3BucketDestination] Bucket where the S3 Storage Lens expanded prefix metrics export will be located. See `s3BucketDestination` below for more details.
  /// [storageLensTableDestination] S3 table bucket where the S3 Storage Lens expanded prefix metrics export will be located. See `storageLensTableDestination` below for more details.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport({
    this.s3BucketDestination,
    this.storageLensTableDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketDestination': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestination, Map<String, dynamic>>(s3BucketDestination, (value) => value.toMap()),
      'storageLensTableDestination': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination, Map<String, dynamic>>(storageLensTableDestination, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport(
      s3BucketDestination: (() { final guardedValue = map['s3BucketDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageLensTableDestination: (() { final guardedValue = map['storageLensTableDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
