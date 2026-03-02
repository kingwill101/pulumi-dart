// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// An identity that can be associated with a resource.
class ResourceIdentityResponse {
  /// The principal id of the identity. This property will only be provided for a system-assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id associated with the resource's identity. This property will only be provided for a system-assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  final pulumi.Input<String>? type;
  /// The list of user-assigned identities associated with the resource. The user-assigned identity dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] The principal id of the identity. This property will only be provided for a system-assigned identity.
  /// [tenantId] The tenant id associated with the resource's identity. This property will only be provided for a system-assigned identity.
  /// [type] The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  /// [userAssignedIdentities] The list of user-assigned identities associated with the resource. The user-assigned identity dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ResourceIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserIdentityResponse>(map['userAssignedIdentities']!, (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

