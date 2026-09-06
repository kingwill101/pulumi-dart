// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getRoleAssignment.
class GetRoleAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final String? condition;
  /// Version of the condition. Currently the only accepted value is '2.0'
  final String? conditionVersion;
  /// Id of the user who created the assignment
  final String? createdBy;
  /// Time it was created
  final String? createdOn;
  /// Id of the delegated managed identity resource
  final String? delegatedManagedIdentityResourceId;
  /// Description of role assignment
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The principal ID.
  final String? principalId;
  /// The principal type of the assigned principal ID.
  final String? principalType;
  /// The role definition ID.
  final String? roleDefinitionId;
  /// The role assignment scope.
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Id of the user who updated the assignment
  final String? updatedBy;
  /// Time it was updated
  final String? updatedOn;

  /// Creates a new [GetRoleAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [condition] The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently the only accepted value is '2.0'
  /// [createdBy] Id of the user who created the assignment
  /// [createdOn] Time it was created
  /// [delegatedManagedIdentityResourceId] Id of the delegated managed identity resource
  /// [description] Description of role assignment
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [principalId] The principal ID.
  /// [principalType] The principal type of the assigned principal ID.
  /// [roleDefinitionId] The role definition ID.
  /// [scope] The role assignment scope.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedBy] Id of the user who updated the assignment
  /// [updatedOn] Time it was updated
  GetRoleAssignmentResult({
    this.azureApiVersion,
    this.condition,
    this.conditionVersion,
    this.createdBy,
    this.createdOn,
    this.delegatedManagedIdentityResourceId,
    this.description,
    this.id,
    this.name,
    this.principalId,
    String? principalType,
    this.roleDefinitionId,
    this.scope,
    this.systemData,
    this.type,
    this.updatedBy,
    this.updatedOn,
  }) : principalType = principalType ?? 'User';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'createdBy': ?createdBy,
      'createdOn': ?createdOn,
      'delegatedManagedIdentityResourceId': ?delegatedManagedIdentityResourceId,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedBy': ?updatedBy,
      'updatedOn': ?updatedOn,
    };
  }

  factory GetRoleAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      delegatedManagedIdentityResourceId: (() { final guardedValue = map['delegatedManagedIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
