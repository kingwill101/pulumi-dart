// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_restore_scope_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';
import 'substitution_rule_response.dart';
import 'transformation_rule_response.dart';

/// Configuration of a restore. Next id: 13
class RestoreConfigResponse {
  /// Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False" is an error.
  final bool allNamespaces;

  /// Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
  final String clusterResourceConflictPolicy;

  /// Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.
  final ClusterResourceRestoreScopeResponse clusterResourceRestoreScope;

  /// A list of selected namespaces excluded from restoration. All namespaces except those in this list will be restored.
  final NamespacesResponse excludedNamespaces;

  /// Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  final String namespacedResourceRestoreMode;

  /// Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not allowed.
  final bool noNamespaces;

  /// A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.
  final NamespacedNamesResponse selectedApplications;

  /// A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.
  final NamespacesResponse selectedNamespaces;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.
  final List<SubstitutionRuleResponse> substitutionRules;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no transformation will occur.
  final List<TransformationRuleResponse> transformationRules;

  /// Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
  final String volumeDataRestorePolicy;

  RestoreConfigResponse({
    required this.allNamespaces,
    required this.clusterResourceConflictPolicy,
    required this.clusterResourceRestoreScope,
    required this.excludedNamespaces,
    required this.namespacedResourceRestoreMode,
    required this.noNamespaces,
    required this.selectedApplications,
    required this.selectedNamespaces,
    required this.substitutionRules,
    required this.transformationRules,
    required this.volumeDataRestorePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allNamespaces'] = allNamespaces;
    map['clusterResourceConflictPolicy'] = clusterResourceConflictPolicy;
    map['clusterResourceRestoreScope'] = clusterResourceRestoreScope.toMap();
    map['excludedNamespaces'] = excludedNamespaces.toMap();
    map['namespacedResourceRestoreMode'] = namespacedResourceRestoreMode;
    map['noNamespaces'] = noNamespaces;
    map['selectedApplications'] = selectedApplications.toMap();
    map['selectedNamespaces'] = selectedNamespaces.toMap();
    map['substitutionRules'] =
        pulumi.Input.encodeList<SubstitutionRuleResponse, Map<String, dynamic>>(
            substitutionRules, (value) => value.toMap());
    map['transformationRules'] = pulumi.Input.encodeList<
        TransformationRuleResponse,
        Map<String, dynamic>>(transformationRules, (value) => value.toMap());
    map['volumeDataRestorePolicy'] = volumeDataRestorePolicy;
    return map;
  }

  factory RestoreConfigResponse.fromMap(Map<String, dynamic> map) {
    return RestoreConfigResponse(
      allNamespaces: map['allNamespaces'] as bool,
      clusterResourceConflictPolicy:
          map['clusterResourceConflictPolicy'] as String,
      clusterResourceRestoreScope: ClusterResourceRestoreScopeResponse.fromMap(
          (map['clusterResourceRestoreScope'] as Map).cast<String, dynamic>()),
      excludedNamespaces: NamespacesResponse.fromMap(
          (map['excludedNamespaces'] as Map).cast<String, dynamic>()),
      namespacedResourceRestoreMode:
          map['namespacedResourceRestoreMode'] as String,
      noNamespaces: map['noNamespaces'] as bool,
      selectedApplications: NamespacedNamesResponse.fromMap(
          (map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaces: NamespacesResponse.fromMap(
          (map['selectedNamespaces'] as Map).cast<String, dynamic>()),
      substitutionRules: pulumi.Input.decodeList<SubstitutionRuleResponse>(
          map['substitutionRules'],
          (value) => SubstitutionRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      transformationRules: pulumi.Input.decodeList<TransformationRuleResponse>(
          map['transformationRules'],
          (value) => TransformationRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      volumeDataRestorePolicy: map['volumeDataRestorePolicy'] as String,
    );
  }
}
