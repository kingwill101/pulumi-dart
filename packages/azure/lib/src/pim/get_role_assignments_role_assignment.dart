// ignore_for_file: unused_element, unnecessary_cast


class GetRoleAssignmentsRoleAssignment {
  /// The condition that limits the resource the role can be assigned to.
  final String condition;
  /// The version of the condition.
  final String conditionVersion;
  /// The ID of the delegated managed identity resource.
  final String delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment.
  final String description;
  /// The principal ID to filter the list of Role Assignments against.
  final String principalId;
  /// The type of the `principal_id`.
  final String principalType;
  /// The ID of the Role Assignment.
  final String roleAssignmentId;
  /// The name of the Role Assignment.
  final String roleAssignmentName;
  /// The scope of the Role Assignment.
  final String roleAssignmentScope;
  /// The ID of the Role Definition.
  final String roleDefinitionId;

  /// Creates a new [GetRoleAssignmentsRoleAssignment].
  /// [condition] The condition that limits the resource the role can be assigned to.
  /// [conditionVersion] The version of the condition.
  /// [delegatedManagedIdentityResourceId] The ID of the delegated managed identity resource.
  /// [description] The description for this Role Assignment.
  /// [principalId] The principal ID to filter the list of Role Assignments against.
  /// [principalType] The type of the `principal_id`.
  /// [roleAssignmentId] The ID of the Role Assignment.
  /// [roleAssignmentName] The name of the Role Assignment.
  /// [roleAssignmentScope] The scope of the Role Assignment.
  /// [roleDefinitionId] The ID of the Role Definition.
  GetRoleAssignmentsRoleAssignment({
    required this.condition,
    required this.conditionVersion,
    required this.delegatedManagedIdentityResourceId,
    required this.description,
    required this.principalId,
    required this.principalType,
    required this.roleAssignmentId,
    required this.roleAssignmentName,
    required this.roleAssignmentScope,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'conditionVersion': conditionVersion,
      'delegatedManagedIdentityResourceId': delegatedManagedIdentityResourceId,
      'description': description,
      'principalId': principalId,
      'principalType': principalType,
      'roleAssignmentId': roleAssignmentId,
      'roleAssignmentName': roleAssignmentName,
      'roleAssignmentScope': roleAssignmentScope,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory GetRoleAssignmentsRoleAssignment.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentsRoleAssignment(
      condition: map['condition'] as String,
      conditionVersion: map['conditionVersion'] as String,
      delegatedManagedIdentityResourceId: map['delegatedManagedIdentityResourceId'] as String,
      description: map['description'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      roleAssignmentId: map['roleAssignmentId'] as String,
      roleAssignmentName: map['roleAssignmentName'] as String,
      roleAssignmentScope: map['roleAssignmentScope'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

