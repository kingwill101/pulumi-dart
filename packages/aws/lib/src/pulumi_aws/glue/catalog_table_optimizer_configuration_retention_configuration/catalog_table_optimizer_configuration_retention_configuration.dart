// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_table_optimizer_configuration_retention_configuration_iceberg_configuration/catalog_table_optimizer_configuration_retention_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationRetentionConfiguration {
  /// The configuration for an Iceberg snapshot retention optimizer.
  final CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration?
      icebergConfiguration;

  CatalogTableOptimizerConfigurationRetentionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final icebergConfigurationValue = icebergConfiguration;
    if (icebergConfigurationValue != null) {
      map['icebergConfiguration'] = icebergConfigurationValue.toMap();
    }
    return map;
  }

  factory CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationRetentionConfiguration(
      icebergConfiguration: map['icebergConfiguration'] == null
          ? null
          : CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration
              .fromMap(
                  (map['icebergConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
