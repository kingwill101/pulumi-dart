// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response.dart';

/// The identity of the Batch account, if configured. This is used when the user specifies 'Microsoft.KeyVault' as their Batch account encryption configuration or when `ManagedIdentity` is selected as the auto-storage authentication mode.
class BatchAccountIdentityResponse {
  /// The principal id of the Batch account. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant id associated with the Batch account. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the Batch account.
  final String type;
  /// The list of user identities associated with the Batch account.
  final Map<String, UserAssignedIdentitiesResponse>? userAssignedIdentities;

  /// Creates a new [BatchAccountIdentityResponse].
  /// [principalId] The principal id of the Batch account. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the Batch account. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the Batch account.
  /// [userAssignedIdentities] The list of user identities associated with the Batch account.
  BatchAccountIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory BatchAccountIdentityResponse.fromMap(Map<String, dynamic> map) {
    return BatchAccountIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

