// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_metadata_configuration_metadata_configuration_inventory_table_configuration_encryption_configuration.dart';

class BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration {
  /// Configuration state of the inventory table, indicating whether the inventory table is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  final String configurationState;

  /// Encryption configuration for the inventory table. See `encryption_configuration` Block for details.
  final BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration?
      encryptionConfiguration;

  /// Inventory table ARN.
  final String? tableArn;

  /// Inventory table name.
  final String? tableName;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration].
  /// [configurationState] Configuration state of the inventory table, indicating whether the inventory table is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  /// [encryptionConfiguration] Encryption configuration for the inventory table. See `encryption_configuration` Block for details.
  /// [tableArn] Inventory table ARN.
  /// [tableName] Inventory table name.
  BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration({
    required this.configurationState,
    this.encryptionConfiguration,
    this.tableArn,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationState'] = configurationState;
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = encryptionConfigurationValue.toMap();
    }
    final tableArnValue = tableArn;
    if (tableArnValue != null) {
      map['tableArn'] = tableArnValue;
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration(
      configurationState: map['configurationState'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration
              .fromMap((map['encryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
