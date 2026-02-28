// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_placement_managed_cluster_config_security_config_kerberos_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecurityConfig {
  /// Kerberos related configuration.
  final WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig? kerberosConfig;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecurityConfig].
  /// [kerberosConfig] Kerberos related configuration.
  WorkflowTemplatePlacementManagedClusterConfigSecurityConfig({
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosConfig': ?kerberosConfig == null ? null : kerberosConfig!.toMap(),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecurityConfig(
      kerberosConfig: map['kerberosConfig'] == null ? null : WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig.fromMap((map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

