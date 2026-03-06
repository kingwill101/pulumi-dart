// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity associated with a server.
class UserIdentityResponse {
  /// Identifier of the client of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String>? clientId;
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserIdentityResponse].
  /// [clientId] Identifier of the client of the service principal associated to the user assigned managed identity.
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  const UserIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

