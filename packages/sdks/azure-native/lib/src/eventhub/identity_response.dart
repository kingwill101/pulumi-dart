// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Properties to configure Identity for Bring your Own Keys
class IdentityResponse {
  /// ObjectId from the KeyVault
  final String principalId;
  /// TenantId from the KeyVault
  final String tenantId;
  /// Type of managed service identity.
  final String? type;
  /// Properties for User Assigned Identities
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] ObjectId from the KeyVault
  /// [tenantId] TenantId from the KeyVault
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Properties for User Assigned Identities
  IdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

