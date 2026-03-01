// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination {
  /// The account ID of the owner of the S3 Storage Lens metrics export bucket.
  final String accountId;
  /// The Amazon Resource Name (ARN) of the bucket.
  final String arn;
  /// Encryption of the metrics exports in this bucket. See Encryption below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption? encryption;
  /// The export format. Valid values: `CSV`, `Parquet`.
  final String format;
  /// The schema version of the export file. Valid values: `V_1`.
  final String outputSchemaVersion;
  /// The prefix of the destination bucket where the metrics export will be delivered.
  final String? prefix;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination].
  /// [accountId] The account ID of the owner of the S3 Storage Lens metrics export bucket.
  /// [arn] The Amazon Resource Name (ARN) of the bucket.
  /// [encryption] Encryption of the metrics exports in this bucket. See Encryption below for more details.
  /// [format] The export format. Valid values: `CSV`, `Parquet`.
  /// [outputSchemaVersion] The schema version of the export file. Valid values: `V_1`.
  /// [prefix] The prefix of the destination bucket where the metrics export will be delivered.
  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination({
    required this.accountId,
    required this.arn,
    this.encryption,
    required this.format,
    required this.outputSchemaVersion,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'arn': arn,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'format': format,
      'outputSchemaVersion': outputSchemaVersion,
      'prefix': ?prefix,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination(
      accountId: map['accountId'] as String,
      arn: map['arn'] as String,
      encryption: map['encryption'] == null ? null : StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      outputSchemaVersion: map['outputSchemaVersion'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

