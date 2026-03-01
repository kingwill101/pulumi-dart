// ignore_for_file: unused_element, unnecessary_cast

import 'catalog_table_optimizer_configuration_retention_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationRetentionConfiguration {
  /// The configuration for an Iceberg snapshot retention optimizer.
  final CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration? icebergConfiguration;

  /// Creates a new [CatalogTableOptimizerConfigurationRetentionConfiguration].
  /// [icebergConfiguration] The configuration for an Iceberg snapshot retention optimizer.
  CatalogTableOptimizerConfigurationRetentionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergConfiguration': ?icebergConfiguration == null ? null : icebergConfiguration!.toMap(),
    };
  }

  factory CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationRetentionConfiguration(
      icebergConfiguration: map['icebergConfiguration'] == null ? null : CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration.fromMap((map['icebergConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

