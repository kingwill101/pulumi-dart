// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// User assigned identity properties
class UserAssignedIdentityResponse {
  /// The client ID of the assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the assigned identity.
  final pulumi.Input<String> principalId;
  /// Identifier of the tenant of a server.
  final pulumi.Input<String>? tenantId;
  /// Types of identities associated with a server.
  final pulumi.Input<String>? type;
  /// Map of user assigned managed identities.
  final pulumi.Input<Map<String, UserIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  /// [tenantId] Identifier of the tenant of a server.
  /// [type] Types of identities associated with a server.
  /// [userAssignedIdentities] Map of user assigned managed identities.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': ?tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserIdentityResponse>(map['userAssignedIdentities']!, (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

