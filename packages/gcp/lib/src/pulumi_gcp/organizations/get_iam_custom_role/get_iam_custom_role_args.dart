// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamCustomRole.
class GetIamCustomRoleArgs {
  /// The numeric ID of the organization in which you want to create a custom role.
  final Input<String> orgId;

  /// The role id that has been used for this role.
  final Input<String> roleId;

  GetIamCustomRoleArgs({
    required this.orgId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['orgId'] = orgId;
    map['roleId'] = roleId;
    return map;
  }

  factory GetIamCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleArgs(
      orgId: Input.asInput<String>(map['orgId']),
      roleId: Input.asInput<String>(map['roleId']),
    );
  }
}
