// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export_storage_lens_table_destination_encryption_sse_kms.dart';

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption {
  /// SSE-KMS encryption. See `sseKms` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms>? sseKms;
  /// SSE-S3 encryption. An empty configuration block `{}` should be used.
  final pulumi.Input<List<Map<String, dynamic>>>? sseS3s;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption].
  /// [sseKms] SSE-KMS encryption. See `sseKms` below for more details.
  /// [sseS3s] SSE-S3 encryption. An empty configuration block `{}` should be used.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption({
    this.sseKms,
    this.sseS3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms, Map<String, dynamic>>(sseKms, (value) => value.toMap()),
      'sseS3s': ?sseS3s,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption(
      sseKms: (() { final guardedValue = map['sseKms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sseS3s: (() { final guardedValue = map['sseS3s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}
