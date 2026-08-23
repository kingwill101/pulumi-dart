// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_data_export_storage_lens_table_destination_encryption.dart';

class StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination {
  /// Whether S3 Storage Lens export to S3 tables is enabled.
  final pulumi.Input<bool> enabled;
  /// Encryption of the metrics exports in this S3 tables bucket. See `encryption` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption>? encryption;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination].
  /// [enabled] Whether S3 Storage Lens export to S3 tables is enabled.
  /// [encryption] Encryption of the metrics exports in this S3 tables bucket. See `encryption` below for more details.
  const StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination({
    required this.enabled,
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
