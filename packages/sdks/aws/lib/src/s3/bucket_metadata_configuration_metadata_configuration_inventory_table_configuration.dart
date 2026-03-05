// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_metadata_configuration_inventory_table_configuration_encryption_configuration.dart';

class BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration {
  /// Configuration state of the inventory table, indicating whether the inventory table is enabled or disabled. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> configurationState;
  /// Encryption configuration for the inventory table. See `encryption_configuration` Block for details.
  final pulumi.Input<BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration>? encryptionConfiguration;
  /// Inventory table ARN.
  final pulumi.Input<String>? tableArn;
  /// Inventory table name.
  final pulumi.Input<String>? tableName;

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
    return <String, dynamic>{
      'configurationState': configurationState,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'tableArn': ?tableArn,
      'tableName': ?tableName,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration(
      configurationState: pulumi.Input.fromValue(map['configurationState'] as String),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableArn: (() { final guardedValue = map['tableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

