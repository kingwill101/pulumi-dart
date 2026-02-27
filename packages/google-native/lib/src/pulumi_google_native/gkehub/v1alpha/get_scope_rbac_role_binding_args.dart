// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getScopeRbacRoleBinding.
class GetScopeRbacRoleBindingArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> rbacrolebindingId;
  final Input<String> scopeId;

  GetScopeRbacRoleBindingArgs({
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

  factory GetScopeRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeRbacRoleBindingArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: Input.asInput<String>(map['rbacrolebindingId']),
      scopeId: Input.asInput<String>(map['scopeId']),
    );
  }
}
