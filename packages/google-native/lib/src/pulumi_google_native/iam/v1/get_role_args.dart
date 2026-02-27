// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRole.
class GetRoleArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> roleId;

  GetRoleArgs({
    this.project,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['roleId'] = roleId;
    return map;
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      roleId: pulumi.Input.asInput<String>(map['roleId']),
    );
  }
}
