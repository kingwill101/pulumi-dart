// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Setting indicating whether the service has a managed identity associated with it.
class ServiceManagedIdentityResponseIdentity {
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// Type of identity being specified, currently SystemAssigned and None are allowed.
  final String type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ServiceManagedIdentityResponseIdentity].
  /// [principalId] The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] Type of identity being specified, currently SystemAssigned and None are allowed.
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  ServiceManagedIdentityResponseIdentity({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ServiceManagedIdentityResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ServiceManagedIdentityResponseIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

