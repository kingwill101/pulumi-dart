// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_scope_rbac_role_binding_gkehub_v1beta_args_doc}
/// Arguments for getScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_scope_rbac_role_binding_gkehub_v1beta_args_doc}
class GetScopeRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeRbacRoleBindingGkehubV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  /// [scopeId] Required.
  GetScopeRbacRoleBindingGkehubV1betaArgs({
    required String location,
    String? project,
    required String rbacrolebindingId,
    required String scopeId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId),
        scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rbacrolebindingId'] = rbacrolebindingId;
    map['scopeId'] = scopeId;
    return map;
  }

  factory GetScopeRbacRoleBindingGkehubV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetScopeRbacRoleBindingGkehubV1betaArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rbacrolebindingId: map['rbacrolebindingId'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
