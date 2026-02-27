// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getScopeRbacRoleBinding.
class GetScopeRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  GetScopeRbacRoleBindingGkehubV1betaArgs({
    required this.location,
    this.project,
    required this.rbacrolebindingId,
    required this.scopeId,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: pulumi.Input.asInput<String>(map['rbacrolebindingId']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
