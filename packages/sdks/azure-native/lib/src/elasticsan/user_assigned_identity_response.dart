// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserAssignedIdentity for the resource.
class UserAssignedIdentityResponse {
  /// The client ID of the identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the identity.
  /// [principalId] The principal ID of the identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

