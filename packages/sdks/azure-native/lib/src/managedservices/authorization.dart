// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Active Directory principal identifier and Azure built-in role that describes the access the principal will receive on the delegated resource in the managed tenant.
class Authorization {
  /// The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role. It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.
  final pulumi.Input<List<String>>? delegatedRoleDefinitionIds;
  /// The identifier of the Azure Active Directory principal.
  final pulumi.Input<String> principalId;
  /// The display name of the Azure Active Directory principal.
  final pulumi.Input<String>? principalIdDisplayName;
  /// The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [Authorization].
  /// [delegatedRoleDefinitionIds] The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role. It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.
  /// [principalId] The identifier of the Azure Active Directory principal.
  /// [principalIdDisplayName] The display name of the Azure Active Directory principal.
  /// [roleDefinitionId] The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  Authorization({
    this.delegatedRoleDefinitionIds,
    required this.principalId,
    this.principalIdDisplayName,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedRoleDefinitionIds': ?delegatedRoleDefinitionIds,
      'principalId': principalId,
      'principalIdDisplayName': ?principalIdDisplayName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory Authorization.fromMap(Map<String, dynamic> map) {
    return Authorization(
      delegatedRoleDefinitionIds: (() { final guardedValue = map['delegatedRoleDefinitionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalIdDisplayName: (() { final guardedValue = map['principalIdDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

