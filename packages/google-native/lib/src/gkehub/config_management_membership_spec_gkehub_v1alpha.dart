// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_binauthz_config.dart';
import 'config_management_config_sync_gkehub_v1alpha.dart';
import 'config_management_hierarchy_controller_config_gkehub_v1alpha.dart';
import 'config_management_policy_controller_gkehub_v1alpha.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecGkehubV1alpha {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final ConfigManagementBinauthzConfig? binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String? cluster;

  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSyncGkehubV1alpha? configSync;

  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfigGkehubV1alpha?
  hierarchyController;

  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyControllerGkehubV1alpha? policyController;

  /// Version of ACM installed.
  final String? version;

  /// Creates a new [ConfigManagementMembershipSpecGkehubV1alpha].
  /// [binauthz] Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpecGkehubV1alpha({
    this.binauthz,
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binauthz': ?binauthz == null ? null : binauthz!.toMap(),
      'cluster': ?cluster,
      'configSync': ?configSync == null ? null : configSync!.toMap(),
      'hierarchyController': ?hierarchyController == null
          ? null
          : hierarchyController!.toMap(),
      'policyController': ?policyController == null
          ? null
          : policyController!.toMap(),
      'version': ?version,
    };
  }

  factory ConfigManagementMembershipSpecGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementMembershipSpecGkehubV1alpha(
      binauthz: map['binauthz'] == null
          ? null
          : ConfigManagementBinauthzConfig.fromMap(
              (map['binauthz'] as Map).cast<String, dynamic>(),
            ),
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      configSync: map['configSync'] == null
          ? null
          : ConfigManagementConfigSyncGkehubV1alpha.fromMap(
              (map['configSync'] as Map).cast<String, dynamic>(),
            ),
      hierarchyController: map['hierarchyController'] == null
          ? null
          : ConfigManagementHierarchyControllerConfigGkehubV1alpha.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>(),
            ),
      policyController: map['policyController'] == null
          ? null
          : ConfigManagementPolicyControllerGkehubV1alpha.fromMap(
              (map['policyController'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
