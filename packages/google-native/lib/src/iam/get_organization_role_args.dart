// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_organization_role_args_doc}
/// Arguments for getOrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_organization_role_args_doc}
class GetOrganizationRoleArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> roleId;

  /// Creates a new [GetOrganizationRoleArgs].
  /// [organizationId] Required.
  /// [roleId] Required.
  GetOrganizationRoleArgs({
    required String organizationId,
    required String roleId,
  }) : organizationId = pulumi.Input.asInput<String>(organizationId),
       roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'roleId': roleId,
    };
  }

  factory GetOrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleArgs(
      organizationId: map['organizationId'] as String,
      roleId: map['roleId'] as String,
    );
  }
}
