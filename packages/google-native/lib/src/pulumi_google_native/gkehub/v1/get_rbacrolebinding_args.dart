// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRbacrolebinding.
class GetRbacrolebindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  GetRbacrolebindingArgs({
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

  factory GetRbacrolebindingArgs.fromMap(Map<String, dynamic> map) {
    return GetRbacrolebindingArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: pulumi.Input.asInput<String>(map['rbacrolebindingId']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
    );
  }
}
