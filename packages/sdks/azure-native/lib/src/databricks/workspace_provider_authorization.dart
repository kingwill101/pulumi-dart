// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The workspace provider authorization.
class WorkspaceProviderAuthorization {
  /// The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the workspace resources.
  final pulumi.Input<String> principalId;
  /// The provider's role definition identifier. This role will define all the permissions that the provider must have on the workspace's container resource group. This role definition cannot have permission to delete the resource group.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [WorkspaceProviderAuthorization].
  /// [principalId] The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the workspace resources.
  /// [roleDefinitionId] The provider's role definition identifier. This role will define all the permissions that the provider must have on the workspace's container resource group. This role definition cannot have permission to delete the resource group.
  WorkspaceProviderAuthorization({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory WorkspaceProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return WorkspaceProviderAuthorization(
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

