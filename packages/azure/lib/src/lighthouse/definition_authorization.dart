// ignore_for_file: unused_element, unnecessary_cast


class DefinitionAuthorization {
  /// The set of role definition ids which define all the permissions that the principal id can assign.
  final List<String>? delegatedRoleDefinitionIds;
  /// The display name of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final String? principalDisplayName;
  /// Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final String principalId;
  /// The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an `Owner` role.
  final String roleDefinitionId;

  /// Creates a new [DefinitionAuthorization].
  /// [delegatedRoleDefinitionIds] The set of role definition ids which define all the permissions that the principal id can assign.
  /// [principalDisplayName] The display name of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [principalId] Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [roleDefinitionId] The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an `Owner` role.
  DefinitionAuthorization({
    this.delegatedRoleDefinitionIds,
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedRoleDefinitionIds': ?delegatedRoleDefinitionIds,
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory DefinitionAuthorization.fromMap(Map<String, dynamic> map) {
    return DefinitionAuthorization(
      delegatedRoleDefinitionIds: map['delegatedRoleDefinitionIds'] == null ? null : (map['delegatedRoleDefinitionIds'] as List).cast<String>(),
      principalDisplayName: map['principalDisplayName'] == null ? null : map['principalDisplayName'] as String,
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

