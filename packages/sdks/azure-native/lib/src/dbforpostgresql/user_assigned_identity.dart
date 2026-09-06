// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity.dart';

/// Identities associated with a server.
class UserAssignedIdentity {
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String?>? principalId;
  /// Types of identities associated with a server.
  final pulumi.Input<dynamic> type;
  /// Map of user assigned managed identities.
  final pulumi.Input<Map<String, UserIdentity>?>? userAssignedIdentities;

  /// Creates a new [UserAssignedIdentity].
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  /// [type] Types of identities associated with a server.
  /// [userAssignedIdentities] Map of user assigned managed identities.
  const UserAssignedIdentity({
    this.principalId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentity>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type']),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserIdentity>(guardedValue, (value) => UserIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
