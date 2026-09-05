// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export_storage_lens_table_destination_encryption.dart';

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination {
  /// Whether S3 Storage Lens export to S3 tables is enabled.
  final pulumi.Input<bool> enabled;
  /// Encryption of the metrics exports in this S3 tables bucket. See `encryption` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption?>? encryption;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination].
  /// [enabled] Whether S3 Storage Lens export to S3 tables is enabled.
  /// [encryption] Encryption of the metrics exports in this S3 tables bucket. See `encryption` below for more details.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination({
    required this.enabled,
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
