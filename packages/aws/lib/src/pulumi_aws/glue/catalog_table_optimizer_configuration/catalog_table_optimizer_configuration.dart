// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_table_optimizer_configuration_orphan_file_deletion_configuration/catalog_table_optimizer_configuration_orphan_file_deletion_configuration.dart';
import '../catalog_table_optimizer_configuration_retention_configuration/catalog_table_optimizer_configuration_retention_configuration.dart';

class CatalogTableOptimizerConfiguration {
  /// Indicates whether the table optimizer is enabled.
  final bool enabled;

  /// The configuration block for an orphan file deletion optimizer. See Orphan File Deletion Configuration for additional details.
  final CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration?
      orphanFileDeletionConfiguration;

  /// The configuration block for a snapshot retention optimizer. See Retention Configuration for additional details.
  final CatalogTableOptimizerConfigurationRetentionConfiguration?
      retentionConfiguration;

  /// The ARN of the IAM role to use for the table optimizer.
  final String roleArn;

  CatalogTableOptimizerConfiguration({
    required this.enabled,
    this.orphanFileDeletionConfiguration,
    this.retentionConfiguration,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final orphanFileDeletionConfigurationValue =
        orphanFileDeletionConfiguration;
    if (orphanFileDeletionConfigurationValue != null) {
      map['orphanFileDeletionConfiguration'] =
          orphanFileDeletionConfigurationValue.toMap();
    }
    final retentionConfigurationValue = retentionConfiguration;
    if (retentionConfigurationValue != null) {
      map['retentionConfiguration'] = retentionConfigurationValue.toMap();
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory CatalogTableOptimizerConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfiguration(
      enabled: map['enabled'] as bool,
      orphanFileDeletionConfiguration: map['orphanFileDeletionConfiguration'] ==
              null
          ? null
          : CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration
              .fromMap((map['orphanFileDeletionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retentionConfiguration: map['retentionConfiguration'] == null
          ? null
          : CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap(
              (map['retentionConfiguration'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] as String,
    );
  }
}
