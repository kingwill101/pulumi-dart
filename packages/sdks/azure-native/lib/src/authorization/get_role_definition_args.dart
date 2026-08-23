// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_definition_args_doc}
/// Arguments for getRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_definition_args_doc}
class GetRoleDefinitionArgs {
  /// The ID of the role definition.
  final pulumi.Input<String> roleDefinitionId;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleDefinitionArgs].
  /// [roleDefinitionId] The ID of the role definition.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const GetRoleDefinitionArgs({
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory GetRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionArgs(
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
