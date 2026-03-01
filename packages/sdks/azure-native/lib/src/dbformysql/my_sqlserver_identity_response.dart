// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Properties to configure Identity for Bring your Own Keys
class MySQLServerIdentityResponse {
  /// ObjectId from the KeyVault
  final String principalId;
  /// TenantId from the KeyVault
  final String tenantId;
  /// Type of managed service identity.
  final String? type;
  /// Metadata of user assigned identity.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [MySQLServerIdentityResponse].
  /// [principalId] ObjectId from the KeyVault
  /// [tenantId] TenantId from the KeyVault
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Metadata of user assigned identity.
  MySQLServerIdentityResponse({
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

  factory MySQLServerIdentityResponse.fromMap(Map<String, dynamic> map) {
    return MySQLServerIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

