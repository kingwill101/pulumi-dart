// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRoleAssignment.
class GetRoleAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final String? condition;
  /// Version of the condition. Currently the only accepted value is '2.0'
  final String? conditionVersion;
  /// Id of the user who created the assignment
  final String createdBy;
  /// Time it was created
  final String createdOn;
  /// Id of the delegated managed identity resource
  final String? delegatedManagedIdentityResourceId;
  /// Description of role assignment
  final String? description;
  /// The role assignment ID.
  final String id;
  /// The role assignment name.
  final String name;
  /// The principal ID.
  final String principalId;
  /// The principal type of the assigned principal ID.
  final String? principalType;
  /// The role definition ID.
  final String roleDefinitionId;
  /// The role assignment scope.
  final String scope;
  /// The role assignment type.
  final String type;
  /// Id of the user who updated the assignment
  final String updatedBy;
  /// Time it was updated
  final String updatedOn;

  /// Creates a new [GetRoleAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [condition] The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition. Currently the only accepted value is '2.0'
  /// [createdBy] Id of the user who created the assignment
  /// [createdOn] Time it was created
  /// [delegatedManagedIdentityResourceId] Id of the delegated managed identity resource
  /// [description] Description of role assignment
  /// [id] The role assignment ID.
  /// [name] The role assignment name.
  /// [principalId] The principal ID.
  /// [principalType] The principal type of the assigned principal ID.
  /// [roleDefinitionId] The role definition ID.
  /// [scope] The role assignment scope.
  /// [type] The role assignment type.
  /// [updatedBy] Id of the user who updated the assignment
  /// [updatedOn] Time it was updated
  GetRoleAssignmentResult({
    required this.azureApiVersion,
    this.condition,
    this.conditionVersion,
    required this.createdBy,
    required this.createdOn,
    this.delegatedManagedIdentityResourceId,
    this.description,
    required this.id,
    required this.name,
    required this.principalId,
    this.principalType,
    required this.roleDefinitionId,
    required this.scope,
    required this.type,
    required this.updatedBy,
    required this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'delegatedManagedIdentityResourceId': ?delegatedManagedIdentityResourceId,
      'description': ?description,
      'id': id,
      'name': name,
      'principalId': principalId,
      'principalType': ?principalType,
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
      'type': type,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }

  factory GetRoleAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: map['createdBy'] as String,
      createdOn: map['createdOn'] as String,
      delegatedManagedIdentityResourceId: (() { final guardedValue = map['delegatedManagedIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: map['roleDefinitionId'] as String,
      scope: map['scope'] as String,
      type: map['type'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedOn: map['updatedOn'] as String,
    );
  }
}

