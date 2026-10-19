// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_orphan_file_deletion_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration {
  /// Configuration for an Iceberg orphan file deletion optimizer. See `configuration.orphan_file_deletion_configuration.iceberg_configuration` Block for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration?>? icebergConfiguration;

  /// Creates a new [CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration].
  /// [icebergConfiguration] Configuration for an Iceberg orphan file deletion optimizer. See `configuration.orphan_file_deletion_configuration.iceberg_configuration` Block for additional details.
  const CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration, Map<String, dynamic>>(icebergConfiguration, (value) => value.toMap()),
    };
  }

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration(
      icebergConfiguration: (() { final guardedValue = map['icebergConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
