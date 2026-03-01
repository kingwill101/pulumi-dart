// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_definition_args_doc}
/// Arguments for getRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_definition_args_doc}
class GetRoleDefinitionArgs {
  /// The ID of the role definition.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleDefinitionArgs].
  /// [roleDefinitionId] The ID of the role definition.
  /// [scope] The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  GetRoleDefinitionArgs({
    required pulumi.Output<String> roleDefinitionId,
    required pulumi.Output<String> scope,
  }) :
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory GetRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionArgs(
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

