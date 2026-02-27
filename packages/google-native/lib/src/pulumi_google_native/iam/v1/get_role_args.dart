// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRole.
class GetRoleArgs {
  final Input<String>? project;
  final Input<String> roleId;

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
      project: Input.asOptionalInput<String>(map['project']),
      roleId: Input.asInput<String>(map['roleId']),
    );
  }
}
