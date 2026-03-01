// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity.dart';

/// Identities associated with a server.
class UserAssignedIdentity {
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final String? principalId;
  /// Types of identities associated with a server.
  final String type;
  /// Map of user assigned managed identities.
  final Map<String, UserIdentity>? userAssignedIdentities;

  /// Creates a new [UserAssignedIdentity].
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  /// [type] Types of identities associated with a server.
  /// [userAssignedIdentities] Map of user assigned managed identities.
  UserAssignedIdentity({
    this.principalId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentity>(map['userAssignedIdentities'], (value) => UserIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

