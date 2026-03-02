// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity associated with a server.
class UserIdentity {
  /// Identifier of the client of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String>? clientId;
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserIdentity].
  /// [clientId] Identifier of the client of the service principal associated to the user assigned managed identity.
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  UserIdentity({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
    );
  }
}

