// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned identity properties
class UserAssignedIdentityServerGroupClusterResponse {
  /// The client ID of the assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityServerGroupClusterResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  const UserAssignedIdentityServerGroupClusterResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityServerGroupClusterResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityServerGroupClusterResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
