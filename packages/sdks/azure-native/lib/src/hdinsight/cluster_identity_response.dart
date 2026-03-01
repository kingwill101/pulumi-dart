// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Identity for the cluster.
class ClusterIdentityResponse {
  /// The principal id of cluster identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant id associated with the cluster. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the cluster. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities.
  final String? type;
  /// The list of user identities associated with the cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ClusterIdentityResponse].
  /// [principalId] The principal id of cluster identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the cluster. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the cluster. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities.
  /// [userAssignedIdentities] The list of user identities associated with the cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ClusterIdentityResponse({
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

  factory ClusterIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

