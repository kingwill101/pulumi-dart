// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_config_sync_response.dart';
import 'config_management_hierarchy_controller_config_response.dart';
import 'config_management_policy_controller_response.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecResponse {
  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String cluster;

  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSyncResponse configSync;

  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfigResponse hierarchyController;

  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyControllerResponse policyController;

  /// Version of ACM installed.
  final String version;

  /// Creates a new [ConfigManagementMembershipSpecResponse].
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpecResponse({
    required this.cluster,
    required this.configSync,
    required this.hierarchyController,
    required this.policyController,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['configSync'] = configSync.toMap();
    map['hierarchyController'] = hierarchyController.toMap();
    map['policyController'] = policyController.toMap();
    map['version'] = version;
    return map;
  }

  factory ConfigManagementMembershipSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecResponse(
      cluster: map['cluster'] as String,
      configSync: ConfigManagementConfigSyncResponse.fromMap(
          (map['configSync'] as Map).cast<String, dynamic>()),
      hierarchyController:
          ConfigManagementHierarchyControllerConfigResponse.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>()),
      policyController: ConfigManagementPolicyControllerResponse.fromMap(
          (map['policyController'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
