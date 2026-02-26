// ignore_for_file: unused_element, unnecessary_cast

import '../storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption_sse_kms/storage_lens_configuration_storage_lens_configuration_data_export_s3_bucket_destination_encryption_sse_kms.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption {
  /// SSE-KMS encryption. See SSE KMS below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms?
      sseKms;

  /// SSE-S3 encryption. An empty configuration block `{}` should be used.
  final List<Map<String, dynamic>>? sseS3s;

  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption({
    this.sseKms,
    this.sseS3s,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sseKmsValue = sseKms;
    if (sseKmsValue != null) {
      map['sseKms'] = sseKmsValue.toMap();
    }
    final sseS3sValue = sseS3s;
    if (sseS3sValue != null) {
      map['sseS3s'] = sseS3sValue;
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption(
      sseKms: map['sseKms'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms
              .fromMap((map['sseKms'] as Map).cast<String, dynamic>()),
      sseS3s: map['sseS3s'] == null
          ? null
          : (map['sseS3s'] as List).cast<Map<String, dynamic>>(),
    );
  }
}
