// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scope_rbac_role_binding_role/scope_rbac_role_binding_role.dart';

/// The set of arguments for ScopeRbacRoleBinding.
class ScopeRbacRoleBindingArgs {
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  final Input<String>? group;

  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Role to bind to the principal.
  /// Structure is documented below.
  final Input<ScopeRbacRoleBindingRole> role;

  /// Id of the scope
  final Input<String> scopeId;

  /// The client-provided identifier of the RBAC Role Binding.
  final Input<String> scopeRbacRoleBindingId;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final Input<String>? user;

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
    map['role'] =
        Input.mapInputValue<ScopeRbacRoleBindingRole, Map<String, dynamic>>(
            role, (value) => value.toMap());
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
      group: Input.asOptionalInput<String>(map['group']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<ScopeRbacRoleBindingRole>(map['role']),
      scopeId: Input.asInput<String>(map['scopeId']),
      scopeRbacRoleBindingId:
          Input.asInput<String>(map['scopeRbacRoleBindingId']),
      user: Input.asOptionalInput<String>(map['user']),
    );
  }
}
