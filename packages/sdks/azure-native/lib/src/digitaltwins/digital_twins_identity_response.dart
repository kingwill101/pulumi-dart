// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// The managed identity for the DigitalTwinsInstance.
class DigitalTwinsIdentityResponse {
  /// The object id of the Managed Identity Resource. This will be sent to the RP from ARM via the x-ms-identity-principal-id header in the PUT request if the resource has a systemAssigned(implicit) identity
  final String principalId;
  /// The tenant id of the Managed Identity Resource. This will be sent to the RP from ARM via the x-ms-client-tenant-id header in the PUT request if the resource has a systemAssigned(implicit) identity
  final String tenantId;
  /// The type of Managed Identity used by the DigitalTwinsInstance.
  final String? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  /// .
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [DigitalTwinsIdentityResponse].
  /// [principalId] The object id of the Managed Identity Resource. This will be sent to the RP from ARM via the x-ms-identity-principal-id header in the PUT request if the resource has a systemAssigned(implicit) identity
  /// [tenantId] The tenant id of the Managed Identity Resource. This will be sent to the RP from ARM via the x-ms-client-tenant-id header in the PUT request if the resource has a systemAssigned(implicit) identity
  /// [type] The type of Managed Identity used by the DigitalTwinsInstance.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  DigitalTwinsIdentityResponse({
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

  factory DigitalTwinsIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DigitalTwinsIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

