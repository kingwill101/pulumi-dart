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
    pulumi.Output<String>? condition,
    pulumi.Output<String>? conditionVersion,
    pulumi.Output<String>? delegatedManagedIdentityResourceId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? roleAssignmentName,
    required pulumi.Output<String> roleDefinitionId,
    required pulumi.Output<String> scope,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      conditionVersion = pulumi.Input.asOptionalInput<String>(conditionVersion),
      delegatedManagedIdentityResourceId = pulumi.Input.asOptionalInput<String>(delegatedManagedIdentityResourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      roleAssignmentName = pulumi.Input.asOptionalInput<String>(roleAssignmentName),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      conditionVersion: map['conditionVersion'] == null ? null : pulumi.Output.create<String>(map['conditionVersion'] as String),
      delegatedManagedIdentityResourceId: map['delegatedManagedIdentityResourceId'] == null ? null : pulumi.Output.create<String>(map['delegatedManagedIdentityResourceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      roleAssignmentName: map['roleAssignmentName'] == null ? null : pulumi.Output.create<String>(map['roleAssignmentName'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

