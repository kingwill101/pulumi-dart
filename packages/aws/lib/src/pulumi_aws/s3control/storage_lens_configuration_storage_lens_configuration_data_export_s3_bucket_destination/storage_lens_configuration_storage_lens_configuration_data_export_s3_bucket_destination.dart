// ignore_for_file: unused_element, unnecessary_cast

import '../storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption/storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination {
  /// The account ID of the owner of the S3 Storage Lens metrics export bucket.
  final String accountId;

  /// The Amazon Resource Name (ARN) of the bucket.
  final String arn;

  /// Encryption of the metrics exports in this bucket. See Encryption below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption?
      encryption;

  /// The export format. Valid values: `CSV`, `Parquet`.
  final String format;

  /// The schema version of the export file. Valid values: `V_1`.
  final String outputSchemaVersion;

  /// The prefix of the destination bucket where the metrics export will be delivered.
  final String? prefix;

  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination({
    required this.accountId,
    required this.arn,
    this.encryption,
    required this.format,
    required this.outputSchemaVersion,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['arn'] = arn;
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = encryptionValue.toMap();
    }
    map['format'] = format;
    map['outputSchemaVersion'] = outputSchemaVersion;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      encryption: map['encryption'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption
              .fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      outputSchemaVersion: map['outputSchemaVersion'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
