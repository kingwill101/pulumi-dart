// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_restore_scope.dart';
import 'namespaced_names.dart';
import 'namespaces.dart';
import 'restore_config_cluster_resource_conflict_policy.dart';
import 'restore_config_namespaced_resource_restore_mode.dart';
import 'restore_config_volume_data_restore_policy.dart';
import 'substitution_rule.dart';
import 'transformation_rule.dart';

/// Configuration of a restore. Next id: 13
class RestoreConfig {
  /// Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False" is an error.
  final bool? allNamespaces;

  /// Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
  final RestoreConfigClusterResourceConflictPolicy?
      clusterResourceConflictPolicy;

  /// Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.
  final ClusterResourceRestoreScope? clusterResourceRestoreScope;

  /// A list of selected namespaces excluded from restoration. All namespaces except those in this list will be restored.
  final Namespaces? excludedNamespaces;

  /// Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  final RestoreConfigNamespacedResourceRestoreMode?
      namespacedResourceRestoreMode;

  /// Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not allowed.
  final bool? noNamespaces;

  /// A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.
  final NamespacedNames? selectedApplications;

  /// A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.
  final Namespaces? selectedNamespaces;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.
  final List<SubstitutionRule>? substitutionRules;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no transformation will occur.
  final List<TransformationRule>? transformationRules;

  /// Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
  final RestoreConfigVolumeDataRestorePolicy? volumeDataRestorePolicy;

  RestoreConfig({
    this.allNamespaces,
    this.clusterResourceConflictPolicy,
    this.clusterResourceRestoreScope,
    this.excludedNamespaces,
    this.namespacedResourceRestoreMode,
    this.noNamespaces,
    this.selectedApplications,
    this.selectedNamespaces,
    this.substitutionRules,
    this.transformationRules,
    this.volumeDataRestorePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allNamespacesValue = allNamespaces;
    if (allNamespacesValue != null) {
      map['allNamespaces'] = allNamespacesValue;
    }
    final clusterResourceConflictPolicyValue = clusterResourceConflictPolicy;
    if (clusterResourceConflictPolicyValue != null) {
      map['clusterResourceConflictPolicy'] =
          clusterResourceConflictPolicyValue.value;
    }
    final clusterResourceRestoreScopeValue = clusterResourceRestoreScope;
    if (clusterResourceRestoreScopeValue != null) {
      map['clusterResourceRestoreScope'] =
          clusterResourceRestoreScopeValue.toMap();
    }
    final excludedNamespacesValue = excludedNamespaces;
    if (excludedNamespacesValue != null) {
      map['excludedNamespaces'] = excludedNamespacesValue.toMap();
    }
    final namespacedResourceRestoreModeValue = namespacedResourceRestoreMode;
    if (namespacedResourceRestoreModeValue != null) {
      map['namespacedResourceRestoreMode'] =
          namespacedResourceRestoreModeValue.value;
    }
    final noNamespacesValue = noNamespaces;
    if (noNamespacesValue != null) {
      map['noNamespaces'] = noNamespacesValue;
    }
    final selectedApplicationsValue = selectedApplications;
    if (selectedApplicationsValue != null) {
      map['selectedApplications'] = selectedApplicationsValue.toMap();
    }
    final selectedNamespacesValue = selectedNamespaces;
    if (selectedNamespacesValue != null) {
      map['selectedNamespaces'] = selectedNamespacesValue.toMap();
    }
    final substitutionRulesValue = substitutionRules;
    if (substitutionRulesValue != null) {
      map['substitutionRules'] =
          pulumi.Input.encodeList<SubstitutionRule, Map<String, dynamic>>(
              substitutionRulesValue, (value) => value.toMap());
    }
    final transformationRulesValue = transformationRules;
    if (transformationRulesValue != null) {
      map['transformationRules'] =
          pulumi.Input.encodeList<TransformationRule, Map<String, dynamic>>(
              transformationRulesValue, (value) => value.toMap());
    }
    final volumeDataRestorePolicyValue = volumeDataRestorePolicy;
    if (volumeDataRestorePolicyValue != null) {
      map['volumeDataRestorePolicy'] = volumeDataRestorePolicyValue.value;
    }
    return map;
  }

  factory RestoreConfig.fromMap(Map<String, dynamic> map) {
    return RestoreConfig(
      allNamespaces:
          map['allNamespaces'] == null ? null : map['allNamespaces'] as bool,
      clusterResourceConflictPolicy:
          map['clusterResourceConflictPolicy'] == null
              ? null
              : RestoreConfigClusterResourceConflictPolicy.fromValue(
                  map['clusterResourceConflictPolicy'] as String),
      clusterResourceRestoreScope: map['clusterResourceRestoreScope'] == null
          ? null
          : ClusterResourceRestoreScope.fromMap(
              (map['clusterResourceRestoreScope'] as Map)
                  .cast<String, dynamic>()),
      excludedNamespaces: map['excludedNamespaces'] == null
          ? null
          : Namespaces.fromMap(
              (map['excludedNamespaces'] as Map).cast<String, dynamic>()),
      namespacedResourceRestoreMode:
          map['namespacedResourceRestoreMode'] == null
              ? null
              : RestoreConfigNamespacedResourceRestoreMode.fromValue(
                  map['namespacedResourceRestoreMode'] as String),
      noNamespaces:
          map['noNamespaces'] == null ? null : map['noNamespaces'] as bool,
      selectedApplications: map['selectedApplications'] == null
          ? null
          : NamespacedNames.fromMap(
              (map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaces: map['selectedNamespaces'] == null
          ? null
          : Namespaces.fromMap(
              (map['selectedNamespaces'] as Map).cast<String, dynamic>()),
      substitutionRules: map['substitutionRules'] == null
          ? null
          : pulumi.Input.decodeList<SubstitutionRule>(
              map['substitutionRules'],
              (value) => SubstitutionRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      transformationRules: map['transformationRules'] == null
          ? null
          : pulumi.Input.decodeList<TransformationRule>(
              map['transformationRules'],
              (value) => TransformationRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      volumeDataRestorePolicy: map['volumeDataRestorePolicy'] == null
          ? null
          : RestoreConfigVolumeDataRestorePolicy.fromValue(
              map['volumeDataRestorePolicy'] as String),
    );
  }
}
