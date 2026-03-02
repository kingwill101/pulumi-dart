// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// The identity of the experiment resource.
class ExperimentIdentityResponse {
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  final pulumi.Input<String> type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [ExperimentIdentityResponse].
  /// [principalId] The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  ExperimentIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities']!, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

