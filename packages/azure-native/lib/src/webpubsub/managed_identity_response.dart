// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_property_response.dart';

/// A class represent managed identities used for request and response
class ManagedIdentityResponse {
  /// Get the principal id for the system assigned identity.
  /// Only be used in response.
  final String principalId;
  /// Get the tenant id for the system assigned identity.
  /// Only be used in response
  final String tenantId;
  /// Represents the identity type: systemAssigned, userAssigned, None
  final String? type;
  /// Get or set the user assigned identities
  final Map<String, UserAssignedIdentityPropertyResponse>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityResponse].
  /// [principalId] Get the principal id for the system assigned identity.
  /// [tenantId] Get the tenant id for the system assigned identity.
  /// [type] Represents the identity type: systemAssigned, userAssigned, None
  /// [userAssignedIdentities] Get or set the user assigned identities
  ManagedIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityPropertyResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityPropertyResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

