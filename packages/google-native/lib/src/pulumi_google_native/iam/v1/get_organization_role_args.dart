// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationRole.
class GetOrganizationRoleArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> roleId;

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
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      roleId: pulumi.Input.asInput<String>(map['roleId']),
    );
  }
}
