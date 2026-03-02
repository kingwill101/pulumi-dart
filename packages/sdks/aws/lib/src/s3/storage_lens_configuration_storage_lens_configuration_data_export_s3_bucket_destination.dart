// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination {
  /// The account ID of the owner of the S3 Storage Lens metrics export bucket.
  final pulumi.Input<String> accountId;
  /// The Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String> arn;
  /// Encryption of the metrics exports in this bucket. See Encryption below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption>? encryption;
  /// The export format. Valid values: `CSV`, `Parquet`.
  final pulumi.Input<String> format;
  /// The schema version of the export file. Valid values: `V_1`.
  final pulumi.Input<String> outputSchemaVersion;
  /// The prefix of the destination bucket where the metrics export will be delivered.
  final pulumi.Input<String>? prefix;

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
      'encryption': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'format': format,
      'outputSchemaVersion': outputSchemaVersion,
      'prefix': ?prefix,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination(
      accountId: (map['accountId'] as String).input(),
      arn: (map['arn'] as String).input(),
      encryption: map['encryption'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input()).input(),
      format: (map['format'] as String).input(),
      outputSchemaVersion: (map['outputSchemaVersion'] as String).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
    );
  }
}

