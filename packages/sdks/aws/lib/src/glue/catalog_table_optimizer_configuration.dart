// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_configuration_orphan_file_deletion_configuration.dart';
import 'catalog_table_optimizer_configuration_retention_configuration.dart';

class CatalogTableOptimizerConfiguration {
  /// Indicates whether the table optimizer is enabled.
  final pulumi.Input<bool> enabled;
  /// The configuration block for an orphan file deletion optimizer. See Orphan File Deletion Configuration for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration>? orphanFileDeletionConfiguration;
  /// The configuration block for a snapshot retention optimizer. See Retention Configuration for additional details.
  final pulumi.Input<CatalogTableOptimizerConfigurationRetentionConfiguration>? retentionConfiguration;
  /// The ARN of the IAM role to use for the table optimizer.
  final pulumi.Input<String> roleArn;

  /// Creates a new [CatalogTableOptimizerConfiguration].
  /// [enabled] Indicates whether the table optimizer is enabled.
  /// [orphanFileDeletionConfiguration] The configuration block for an orphan file deletion optimizer. See Orphan File Deletion Configuration for additional details.
  /// [retentionConfiguration] The configuration block for a snapshot retention optimizer. See Retention Configuration for additional details.
  /// [roleArn] The ARN of the IAM role to use for the table optimizer.
  CatalogTableOptimizerConfiguration({
    required this.enabled,
    this.orphanFileDeletionConfiguration,
    this.retentionConfiguration,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'orphanFileDeletionConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration, Map<String, dynamic>>(orphanFileDeletionConfiguration, (value) => value.toMap()),
      'retentionConfiguration': ?pulumi.Input.mapOptionalInputValue<CatalogTableOptimizerConfigurationRetentionConfiguration, Map<String, dynamic>>(retentionConfiguration, (value) => value.toMap()),
      'roleArn': roleArn,
    };
  }

  factory CatalogTableOptimizerConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      orphanFileDeletionConfiguration: (() { final guardedValue = map['orphanFileDeletionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionConfiguration: (() { final guardedValue = map['retentionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOptimizerConfigurationRetentionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

