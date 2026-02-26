// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_binauthz_config2.dart';
import 'config_management_config_sync3.dart';
import 'config_management_hierarchy_controller_config3.dart';
import 'config_management_policy_controller3.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpec3 {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final ConfigManagementBinauthzConfig2? binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String? cluster;

  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSync3? configSync;

  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfig3? hierarchyController;

  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyController3? policyController;

  /// Version of ACM installed.
  final String? version;

  ConfigManagementMembershipSpec3({
    this.binauthz,
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final binauthzValue = binauthz;
    if (binauthzValue != null) {
      map['binauthz'] = binauthzValue.toMap();
    }
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final configSyncValue = configSync;
    if (configSyncValue != null) {
      map['configSync'] = configSyncValue.toMap();
    }
    final hierarchyControllerValue = hierarchyController;
    if (hierarchyControllerValue != null) {
      map['hierarchyController'] = hierarchyControllerValue.toMap();
    }
    final policyControllerValue = policyController;
    if (policyControllerValue != null) {
      map['policyController'] = policyControllerValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ConfigManagementMembershipSpec3.fromMap(Map<String, dynamic> map) {
    return ConfigManagementMembershipSpec3(
      binauthz: map['binauthz'] == null
          ? null
          : ConfigManagementBinauthzConfig2.fromMap(
              (map['binauthz'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      configSync: map['configSync'] == null
          ? null
          : ConfigManagementConfigSync3.fromMap(
              (map['configSync'] as Map).cast<String, dynamic>()),
      hierarchyController: map['hierarchyController'] == null
          ? null
          : ConfigManagementHierarchyControllerConfig3.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>()),
      policyController: map['policyController'] == null
          ? null
          : ConfigManagementPolicyController3.fromMap(
              (map['policyController'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
