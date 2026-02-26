// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_table_optimizer_configuration_orphan_file_deletion_configuration_iceberg_configuration/catalog_table_optimizer_configuration_orphan_file_deletion_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration {
  /// The configuration for an Iceberg orphan file deletion optimizer.
  final CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration?
      icebergConfiguration;

  CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration({
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

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration(
      icebergConfiguration: map['icebergConfiguration'] == null
          ? null
          : CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration
              .fromMap(
                  (map['icebergConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
