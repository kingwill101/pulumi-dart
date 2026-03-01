// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response_user_assigned_identities.dart';

/// Identity for the resource.
class ManagedServiceIdentityResponse {
  /// The principal id of the system assigned identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant id of the system assigned identity. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned,UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final String? type;
  /// The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, ManagedServiceIdentityResponseUserAssignedIdentities>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentityResponse].
  /// [principalId] The principal id of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the resource. The type 'SystemAssigned,UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ManagedServiceIdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<ManagedServiceIdentityResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<ManagedServiceIdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => ManagedServiceIdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

