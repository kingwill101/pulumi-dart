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
  const ResourceIdentityResponse({
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
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserIdentityResponse>(guardedValue, (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
