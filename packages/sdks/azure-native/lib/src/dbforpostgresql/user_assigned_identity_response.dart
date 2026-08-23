// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// Identities associated with a server.
class UserAssignedIdentityResponse {
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final pulumi.Input<String>? principalId;
  /// Identifier of the tenant of a server.
  final pulumi.Input<String> tenantId;
  /// Types of identities associated with a server.
  final pulumi.Input<String> type;
  /// Map of user assigned managed identities.
  final pulumi.Input<Map<String, UserIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  /// [tenantId] Identifier of the tenant of a server.
  /// [type] Types of identities associated with a server.
  /// [userAssignedIdentities] Map of user assigned managed identities.
  const UserAssignedIdentityResponse({
    this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserIdentityResponse>(guardedValue, (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
