// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access Connector Resource that is going to be associated with Databricks Workspace
class WorkspacePropertiesAccessConnector {
  /// The resource ID of Azure Databricks Access Connector Resource.
  final pulumi.Input<String> id;
  /// The identity type of the Access Connector Resource.
  final pulumi.Input<String> identityType;
  /// The resource ID of the User Assigned Identity associated with the Access Connector Resource. This is required for type 'UserAssigned' and not valid for type 'SystemAssigned'.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [WorkspacePropertiesAccessConnector].
  /// [id] The resource ID of Azure Databricks Access Connector Resource.
  /// [identityType] The identity type of the Access Connector Resource.
  /// [userAssignedIdentityId] The resource ID of the User Assigned Identity associated with the Access Connector Resource. This is required for type 'UserAssigned' and not valid for type 'SystemAssigned'.
  const WorkspacePropertiesAccessConnector({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

