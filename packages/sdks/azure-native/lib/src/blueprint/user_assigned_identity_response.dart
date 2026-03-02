// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User-assigned managed identity.
class UserAssignedIdentityResponse {
  /// Client App Id associated with this identity.
  final pulumi.Input<String>? clientId;
  /// Azure Active Directory principal ID associated with this Identity.
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Client App Id associated with this identity.
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  UserAssignedIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
    );
  }
}

