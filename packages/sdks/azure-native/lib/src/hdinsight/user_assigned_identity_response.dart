// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The User Assigned Identity
class UserAssignedIdentityResponse {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;

  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// The tenant id of user assigned identity.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  /// [tenantId] The tenant id of user assigned identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
