// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_compaction_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationCompactionConfiguration {
  /// The configuration for an Iceberg compaction optimizer.
  final pulumi.Input<CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration>? icebergConfiguration;

  /// Creates a new [CatalogTableOptimizerConfigurationCompactionConfiguration].
  /// [icebergConfiguration] The configuration for an Iceberg compaction optimizer.
  const CatalogTableOptimizerConfigurationCompactionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration, Map<String, dynamic>>(icebergConfiguration, (value) => value.toMap()),
    };
  }

  factory CatalogTableOptimizerConfigurationCompactionConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationCompactionConfiguration(
      icebergConfiguration: (() { final guardedValue = map['icebergConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
