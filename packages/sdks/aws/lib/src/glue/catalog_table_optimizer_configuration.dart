// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_compaction_configuration.dart';
import 'catalog_table_optimizer_configuration_orphan_file_deletion_configuration.dart';
import 'catalog_table_optimizer_configuration_retention_configuration.dart';

class CatalogTableOptimizerConfiguration {
  /// Configuration block for a compaction optimizer. See `compactionConfiguration` Block for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationCompactionConfiguration?>? compactionConfiguration;
  /// Whether the table optimizer is enabled.
  final pulumi.Input<bool> enabled;
  /// Configuration block for an orphan file deletion optimizer. See `orphanFileDeletionConfiguration` Block for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration?>? orphanFileDeletionConfiguration;
  /// Configuration block for a snapshot retention optimizer. See `retentionConfiguration` Block for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationRetentionConfiguration?>? retentionConfiguration;
  /// ARN of the IAM role to use for the table optimizer.
  final pulumi.Input<String> roleArn;

  /// Creates a new [CatalogTableOptimizerConfiguration].
  /// [compactionConfiguration] Configuration block for a compaction optimizer. See `compactionConfiguration` Block for additional details.
  /// [enabled] Whether the table optimizer is enabled.
  /// [orphanFileDeletionConfiguration] Configuration block for an orphan file deletion optimizer. See `orphanFileDeletionConfiguration` Block for additional details.
  /// [retentionConfiguration] Configuration block for a snapshot retention optimizer. See `retentionConfiguration` Block for additional details.
  /// [roleArn] ARN of the IAM role to use for the table optimizer.
  const CatalogTableOptimizerConfiguration({
    this.compactionConfiguration,
    required this.enabled,
    this.orphanFileDeletionConfiguration,
    this.retentionConfiguration,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactionConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationCompactionConfiguration, Map<String, dynamic>>(compactionConfiguration, (value) => value.toMap()),
      'enabled': enabled,
      'orphanFileDeletionConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration, Map<String, dynamic>>(orphanFileDeletionConfiguration, (value) => value.toMap()),
      'retentionConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationRetentionConfiguration, Map<String, dynamic>>(retentionConfiguration, (value) => value.toMap()),
      'roleArn': roleArn,
    };
  }

  factory CatalogTableOptimizerConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfiguration(
      compactionConfiguration: (() { final guardedValue = map['compactionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationCompactionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      orphanFileDeletionConfiguration: (() { final guardedValue = map['orphanFileDeletionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionConfiguration: (() { final guardedValue = map['retentionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
