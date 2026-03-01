// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_properties_response.dart';

/// Identity properties of the Api Management service resource.
class ApiManagementServiceIdentityResponse {
  /// The principal id of the identity.
  final String principalId;
  /// The client tenant id of the identity.
  final String tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final String type;
  /// The list of user identities associated with the resource. The user identity
  /// dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
  /// providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserIdentityPropertiesResponse>? userAssignedIdentities;

  /// Creates a new [ApiManagementServiceIdentityResponse].
  /// [principalId] The principal id of the identity.
  /// [tenantId] The client tenant id of the identity.
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity
  ApiManagementServiceIdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentityPropertiesResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ApiManagementServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ApiManagementServiceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityPropertiesResponse>(map['userAssignedIdentities'], (value) => UserIdentityPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

