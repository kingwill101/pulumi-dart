// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_binauthz_config_response.dart';
import 'config_management_config_sync_response2.dart';
import 'config_management_hierarchy_controller_config_response2.dart';
import 'config_management_policy_controller_response2.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecResponse2 {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final ConfigManagementBinauthzConfigResponse binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String cluster;

  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSyncResponse2 configSync;

  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfigResponse2 hierarchyController;

  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyControllerResponse2 policyController;

  /// Version of ACM installed.
  final String version;

  ConfigManagementMembershipSpecResponse2({
    required this.binauthz,
    required this.cluster,
    required this.configSync,
    required this.hierarchyController,
    required this.policyController,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['binauthz'] = binauthz.toMap();
    map['cluster'] = cluster;
    map['configSync'] = configSync.toMap();
    map['hierarchyController'] = hierarchyController.toMap();
    map['policyController'] = policyController.toMap();
    map['version'] = version;
    return map;
  }

  factory ConfigManagementMembershipSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecResponse2(
      binauthz: ConfigManagementBinauthzConfigResponse.fromMap(
          (map['binauthz'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] as String,
      configSync: ConfigManagementConfigSyncResponse2.fromMap(
          (map['configSync'] as Map).cast<String, dynamic>()),
      hierarchyController:
          ConfigManagementHierarchyControllerConfigResponse2.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>()),
      policyController: ConfigManagementPolicyControllerResponse2.fromMap(
          (map['policyController'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
