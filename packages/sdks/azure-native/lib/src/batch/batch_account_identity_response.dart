// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response.dart';

/// The identity of the Batch account, if configured. This is used when the user specifies 'Microsoft.KeyVault' as their Batch account encryption configuration or when `ManagedIdentity` is selected as the auto-storage authentication mode.
class BatchAccountIdentityResponse {
  /// The principal id of the Batch account. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id associated with the Batch account. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the Batch account.
  final pulumi.Input<String> type;
  /// The list of user identities associated with the Batch account.
  final pulumi.Input<Map<String, UserAssignedIdentitiesResponse>>? userAssignedIdentities;

  /// Creates a new [BatchAccountIdentityResponse].
  /// [principalId] The principal id of the Batch account. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the Batch account. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the Batch account.
  /// [userAssignedIdentities] The list of user identities associated with the Batch account.
  const BatchAccountIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentitiesResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BatchAccountIdentityResponse.fromMap(Map<String, dynamic> map) {
    return BatchAccountIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponse>(guardedValue, (value) => UserAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

