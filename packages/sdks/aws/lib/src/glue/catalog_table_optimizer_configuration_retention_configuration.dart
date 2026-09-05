// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_retention_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationRetentionConfiguration {
  /// The configuration for an Iceberg snapshot retention optimizer.
  final pulumi.Input<CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration?>? icebergConfiguration;

  /// Creates a new [CatalogTableOptimizerConfigurationRetentionConfiguration].
  /// [icebergConfiguration] The configuration for an Iceberg snapshot retention optimizer.
  const CatalogTableOptimizerConfigurationRetentionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration, Map<String, dynamic>>(icebergConfiguration, (value) => value.toMap()),
    };
  }

  factory CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationRetentionConfiguration(
      icebergConfiguration: (() { final guardedValue = map['icebergConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
