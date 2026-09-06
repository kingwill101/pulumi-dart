// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User-assigned managed identity.
class UserAssignedIdentityResponse {
  /// Client App Id associated with this identity.
  final pulumi.Input<String?>? clientId;
  /// Azure Active Directory principal ID associated with this Identity.
  final pulumi.Input<String?>? principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Client App Id associated with this identity.
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  const UserAssignedIdentityResponse({
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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
