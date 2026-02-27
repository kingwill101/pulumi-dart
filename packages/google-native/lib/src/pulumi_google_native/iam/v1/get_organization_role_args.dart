// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationRole.
class GetOrganizationRoleArgs {
  final Input<String> organizationId;
  final Input<String> roleId;

  GetOrganizationRoleArgs({
    required this.organizationId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['roleId'] = roleId;
    return map;
  }

  factory GetOrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleArgs(
      organizationId: Input.asInput<String>(map['organizationId']),
      roleId: Input.asInput<String>(map['roleId']),
    );
  }
}
