// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption_sse_kms.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption {
  /// SSE-KMS encryption. See SSE KMS below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms>? sseKms;
  /// SSE-S3 encryption. An empty configuration block `{}` should be used.
  final pulumi.Input<List<Map<String, dynamic>>>? sseS3s;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption].
  /// [sseKms] SSE-KMS encryption. See SSE KMS below for more details.
  /// [sseS3s] SSE-S3 encryption. An empty configuration block `{}` should be used.
  const StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption({
    this.sseKms,
    this.sseS3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms, Map<String, dynamic>>(sseKms, (value) => value.toMap()),
      'sseS3s': ?sseS3s,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption(
      sseKms: (() { final guardedValue = map['sseKms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseS3s: (() { final guardedValue = map['sseS3s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}

