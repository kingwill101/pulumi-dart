// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scope_rbac_role_binding_role/scope_rbac_role_binding_role.dart';

/// The set of arguments for ScopeRbacRoleBinding.
class ScopeRbacRoleBindingArgs {
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;

  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Role to bind to the principal.
  /// Structure is documented below.
  final pulumi.Input<ScopeRbacRoleBindingRole> role;

  /// Id of the scope
  final pulumi.Input<String> scopeId;

  /// The client-provided identifier of the RBAC Role Binding.
  final pulumi.Input<String> scopeRbacRoleBindingId;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  ScopeRbacRoleBindingArgs({
    this.group,
    this.labels,
    this.project,
    required this.role,
    required this.scopeId,
    required this.scopeRbacRoleBindingId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = pulumi.Input.mapInputValue<ScopeRbacRoleBindingRole,
        Map<String, dynamic>>(role, (value) => value.toMap());
    map['scopeId'] = scopeId;
    map['scopeRbacRoleBindingId'] = scopeRbacRoleBindingId;
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory ScopeRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingArgs(
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<ScopeRbacRoleBindingRole>(map['role']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
      scopeRbacRoleBindingId:
          pulumi.Input.asInput<String>(map['scopeRbacRoleBindingId']),
      user: pulumi.Input.asOptionalInput<String>(map['user']),
    );
  }
}
