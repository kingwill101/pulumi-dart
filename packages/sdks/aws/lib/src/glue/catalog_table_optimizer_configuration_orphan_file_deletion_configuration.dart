// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_orphan_file_deletion_configuration_iceberg_configuration.dart';

class CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration {
  /// The configuration for an Iceberg orphan file deletion optimizer.
  final pulumi.Input<CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration>? icebergConfiguration;

  /// Creates a new [CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration].
  /// [icebergConfiguration] The configuration for an Iceberg orphan file deletion optimizer.
  CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration({
    this.icebergConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration, Map<String, dynamic>>(icebergConfiguration, (value) => value.toMap()),
    };
  }

  factory CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration(
      icebergConfiguration: map['icebergConfiguration'] == null ? null : ((CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration.fromMap((map['icebergConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

