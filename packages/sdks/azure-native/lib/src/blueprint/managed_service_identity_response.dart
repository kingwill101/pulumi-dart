// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed identity generic object.
class ManagedServiceIdentityResponse {
  /// Azure Active Directory principal ID associated with this Identity.
  final String? principalId;
  /// ID of the Azure Active Directory.
  final String? tenantId;
  /// Type of the managed identity.
  final String type;
  /// The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentityResponse].
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  /// [tenantId] ID of the Azure Active Directory.
  /// [type] Type of the managed identity.
  /// [userAssignedIdentities] The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  ManagedServiceIdentityResponse({
    this.principalId,
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentityResponse(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

