// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_response.dart';

/// Managed identity properties retrieved from ARM request headers.
class ManagedIdentityPropertiesResponse {
  /// Principal Id of system-assigned managed identity.
  final pulumi.Input<String>? principalId;
  /// Tenant Id of system-assigned managed identity.
  final pulumi.Input<String>? tenantId;
  /// Type of the managed identity
  final pulumi.Input<String>? type;
  /// Properties of user-assigned managed identities
  final pulumi.Input<Map<String, UserAssignedManagedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityPropertiesResponse].
  /// [principalId] Principal Id of system-assigned managed identity.
  /// [tenantId] Tenant Id of system-assigned managed identity.
  /// [type] Type of the managed identity
  /// [userAssignedIdentities] Properties of user-assigned managed identities
  ManagedIdentityPropertiesResponse({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedManagedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedManagedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityPropertiesResponse(
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedManagedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedManagedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

