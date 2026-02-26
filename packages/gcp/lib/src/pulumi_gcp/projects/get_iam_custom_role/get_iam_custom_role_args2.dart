// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamCustomRole.
class GetIamCustomRoleArgs2 {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final Input<String>? project;

  /// The role id that has been used for this role.
  final Input<String> roleId;

  GetIamCustomRoleArgs2({
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

  factory GetIamCustomRoleArgs2.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      roleId: Input.asInput<String>(map['roleId']),
    );
  }
}
