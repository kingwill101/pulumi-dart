// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_binauthz_config_response_gkehub_v1beta.dart';
import 'config_management_config_sync_response_gkehub_v1beta.dart';
import 'config_management_hierarchy_controller_config_response_gkehub_v1beta.dart';
import 'config_management_policy_controller_response_gkehub_v1beta.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecResponseGkehubV1beta {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final ConfigManagementBinauthzConfigResponseGkehubV1beta binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String cluster;

  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSyncResponseGkehubV1beta configSync;

  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfigResponseGkehubV1beta
      hierarchyController;

  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyControllerResponseGkehubV1beta policyController;

  /// Version of ACM installed.
  final String version;

  ConfigManagementMembershipSpecResponseGkehubV1beta({
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

  factory ConfigManagementMembershipSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecResponseGkehubV1beta(
      binauthz: ConfigManagementBinauthzConfigResponseGkehubV1beta.fromMap(
          (map['binauthz'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] as String,
      configSync: ConfigManagementConfigSyncResponseGkehubV1beta.fromMap(
          (map['configSync'] as Map).cast<String, dynamic>()),
      hierarchyController:
          ConfigManagementHierarchyControllerConfigResponseGkehubV1beta.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>()),
      policyController:
          ConfigManagementPolicyControllerResponseGkehubV1beta.fromMap(
              (map['policyController'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
