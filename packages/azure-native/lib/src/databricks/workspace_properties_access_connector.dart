// ignore_for_file: unused_element, unnecessary_cast


/// Access Connector Resource that is going to be associated with Databricks Workspace
class WorkspacePropertiesAccessConnector {
  /// The resource ID of Azure Databricks Access Connector Resource.
  final String id;
  /// The identity type of the Access Connector Resource.
  final String identityType;
  /// The resource ID of the User Assigned Identity associated with the Access Connector Resource. This is required for type 'UserAssigned' and not valid for type 'SystemAssigned'.
  final String? userAssignedIdentityId;

  /// Creates a new [WorkspacePropertiesAccessConnector].
  /// [id] The resource ID of Azure Databricks Access Connector Resource.
  /// [identityType] The identity type of the Access Connector Resource.
  /// [userAssignedIdentityId] The resource ID of the User Assigned Identity associated with the Access Connector Resource. This is required for type 'UserAssigned' and not valid for type 'SystemAssigned'.
  WorkspacePropertiesAccessConnector({
    required this.id,
    required this.identityType,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identityType': identityType,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory WorkspacePropertiesAccessConnector.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesAccessConnector(
      id: map['id'] as String,
      identityType: map['identityType'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

