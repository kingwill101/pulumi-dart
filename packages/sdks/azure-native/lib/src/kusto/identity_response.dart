// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response_user_assigned_identities.dart';

/// Identity for the resource.
class IdentityResponse {
  /// The principal ID of resource identity.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;
  /// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove all identities.
  final String type;
  /// The list of user identities associated with the Kusto cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, IdentityResponseUserAssignedIdentities>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove all identities.
  /// [userAssignedIdentities] The list of user identities associated with the Kusto cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  IdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<IdentityResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<IdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => IdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

