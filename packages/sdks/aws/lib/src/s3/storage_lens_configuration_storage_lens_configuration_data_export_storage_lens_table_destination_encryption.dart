// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_data_export_storage_lens_table_destination_encryption_sse_kms.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption {
  /// SSE-KMS encryption. See `sseKms` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms>? sseKms;
  /// SSE-S3 encryption. An empty configuration block `{}` should be used.
  final pulumi.Input<List<Map<String, dynamic>>>? sseS3s;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption].
  /// [sseKms] SSE-KMS encryption. See `sseKms` below for more details.
  /// [sseS3s] SSE-S3 encryption. An empty configuration block `{}` should be used.
  const StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption({
    this.sseKms,
    this.sseS3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms, Map<String, dynamic>>(sseKms, (value) => value.toMap()),
      'sseS3s': ?sseS3s,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption(
      sseKms: (() { final guardedValue = map['sseKms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseS3s: (() { final guardedValue = map['sseS3s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}
