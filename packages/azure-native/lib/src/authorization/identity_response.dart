// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response_user_assigned_identities.dart';

/// Identity for the resource.  Policy assignments support a maximum of one identity.  That is either a system assigned identity or a single user assigned identity.
class IdentityResponse {
  /// The principal ID of the resource identity.  This property will only be provided for a system assigned identity
  final String principalId;
  /// The tenant ID of the resource identity.  This property will only be provided for a system assigned identity
  final String tenantId;
  /// The identity type. This is the only required field when adding a system or user assigned identity to a resource.
  final String? type;
  /// The user identity associated with the policy. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, IdentityResponseUserAssignedIdentities>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of the resource identity.  This property will only be provided for a system assigned identity
  /// [tenantId] The tenant ID of the resource identity.  This property will only be provided for a system assigned identity
  /// [type] The identity type. This is the only required field when adding a system or user assigned identity to a resource.
  /// [userAssignedIdentities] The user identity associated with the policy. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<IdentityResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<IdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => IdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

