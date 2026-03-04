// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_role_assignment_args_doc}
/// The set of arguments for RoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_assignment_args_doc}
class RoleAssignmentArgs {
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final pulumi.Input<String>? condition;

  /// Version of the condition. Currently the only accepted value is '2.0'
  final pulumi.Input<String>? conditionVersion;

  /// Id of the delegated managed identity resource
  final pulumi.Input<String>? delegatedManagedIdentityResourceId;

  /// Description of role assignment
  final pulumi.Input<String>? description;

  /// The principal ID.
  final pulumi.Input<String> principalId;

  /// The principal type of the assigned principal ID.
  final pulumi.Input<String>? principalType;

  /// The name of the role assignment. It can be any valid GUID.
  final pulumi.Input<String>? roleAssignmentName;

  /// The role definition ID.
  final pulumi.Input<String> roleDefinitionId;

  /// The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [RoleAssignmentArgs].
  /// [condition] The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently the only accepted value is '2.0'
  /// [delegatedManagedIdentityResourceId] Id of the delegated managed identity resource
  /// [description] Description of role assignment
  /// [principalId] The principal ID.
  /// [principalType] The principal type of the assigned principal ID.
  /// [roleAssignmentName] The name of the role assignment. It can be any valid GUID.
  /// [roleDefinitionId] The role definition ID.
  /// [scope] The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  RoleAssignmentArgs({
    this.condition,
    this.conditionVersion,
    this.delegatedManagedIdentityResourceId,
    this.description,
    required this.principalId,
    this.principalType,
    this.roleAssignmentName,
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'delegatedManagedIdentityResourceId': ?delegatedManagedIdentityResourceId,
      'description': ?description,
      'principalId': principalId,
      'principalType': ?principalType,
      'roleAssignmentName': ?roleAssignmentName,
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      conditionVersion: (() {
        final guardedValue = map['conditionVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delegatedManagedIdentityResourceId: (() {
        final guardedValue = map['delegatedManagedIdentityResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: (() {
        final guardedValue = map['principalType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleAssignmentName: (() {
        final guardedValue = map['roleAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: pulumi.Input.fromValue(
        map['roleDefinitionId'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
