// ignore_for_file: unused_element, unnecessary_cast

import 'feature_membership_configmanagement_config_sync.dart';
import 'feature_membership_configmanagement_hierarchy_controller.dart';
import 'feature_membership_configmanagement_policy_controller.dart';

class FeatureMembershipConfigmanagement {
  /// Config Sync configuration for the cluster. Structure is documented below.
  final FeatureMembershipConfigmanagementConfigSync? configSync;

  /// Hierarchy Controller configuration for the cluster. Structure is documented below.
  /// Configuring Hierarchy Controller through the configmanagement feature is no longer recommended.
  /// Use open source Kubernetes [Hierarchical Namespace Controller (HNC)](https://github.com/kubernetes-sigs/hierarchical-namespaces) instead.
  /// Follow the [instructions](https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/migrate-hierarchy-controller)
  /// to migrate from Hierarchy Controller to HNC.
  final FeatureMembershipConfigmanagementHierarchyController?
  hierarchyController;

  /// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  final String? management;

  /// Policy Controller configuration for the cluster. Structure is documented below.
  /// Configuring Policy Controller through the configmanagement feature is no longer recommended.
  /// Use the policycontroller feature instead.
  final FeatureMembershipConfigmanagementPolicyController? policyController;

  /// Version of Config Sync installed.
  final String? version;

  /// Creates a new [FeatureMembershipConfigmanagement].
  /// [configSync] Config Sync configuration for the cluster. Structure is documented below.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster. Structure is documented below.
  /// [management] Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  /// [policyController] Policy Controller configuration for the cluster. Structure is documented below.
  /// [version] Version of Config Sync installed.
  FeatureMembershipConfigmanagement({
    this.configSync,
    this.hierarchyController,
    this.management,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSync': ?configSync == null ? null : configSync!.toMap(),
      'hierarchyController': ?hierarchyController == null
          ? null
          : hierarchyController!.toMap(),
      'management': ?management,
      'policyController': ?policyController == null
          ? null
          : policyController!.toMap(),
      'version': ?version,
    };
  }

  factory FeatureMembershipConfigmanagement.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagement(
      configSync: map['configSync'] == null
          ? null
          : FeatureMembershipConfigmanagementConfigSync.fromMap(
              (map['configSync'] as Map).cast<String, dynamic>(),
            ),
      hierarchyController: map['hierarchyController'] == null
          ? null
          : FeatureMembershipConfigmanagementHierarchyController.fromMap(
              (map['hierarchyController'] as Map).cast<String, dynamic>(),
            ),
      management: map['management'] == null
          ? null
          : map['management'] as String,
      policyController: map['policyController'] == null
          ? null
          : FeatureMembershipConfigmanagementPolicyController.fromMap(
              (map['policyController'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
