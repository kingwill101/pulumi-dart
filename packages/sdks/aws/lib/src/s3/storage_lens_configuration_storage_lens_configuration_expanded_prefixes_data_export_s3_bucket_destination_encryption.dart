// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export_s3_bucket_destination_encryption_sse_kms.dart';

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption {
  /// SSE-KMS encryption. See `sseKms` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms?>? sseKms;
  /// SSE-S3 encryption. An empty configuration block `{}` should be used.
  final pulumi.Input<List<Map<String, dynamic>>?>? sseS3s;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption].
  /// [sseKms] SSE-KMS encryption. See `sseKms` below for more details.
  /// [sseS3s] SSE-S3 encryption. An empty configuration block `{}` should be used.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption({
    this.sseKms,
    this.sseS3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms, Map<String, dynamic>>(sseKms, (value) => value.toMap()),
      'sseS3s': ?sseS3s,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption(
      sseKms: (() { final guardedValue = map['sseKms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseS3s: (() { final guardedValue = map['sseS3s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}
