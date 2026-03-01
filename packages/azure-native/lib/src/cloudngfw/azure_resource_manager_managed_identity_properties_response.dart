// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_user_assigned_identity_response.dart';

/// The properties of the managed service identities assigned to this resource.
class AzureResourceManagerManagedIdentityPropertiesResponse {
  /// The active directory identifier of this principal.
  final String principalId;
  /// The Active Directory tenant id of the principal.
  final String tenantId;
  /// The type of managed identity assigned to this resource.
  final String type;
  /// The identities assigned to this resource by the user.
  final Map<String, AzureResourceManagerUserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [AzureResourceManagerManagedIdentityPropertiesResponse].
  /// [principalId] The active directory identifier of this principal.
  /// [tenantId] The Active Directory tenant id of the principal.
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  AzureResourceManagerManagedIdentityPropertiesResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<AzureResourceManagerUserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory AzureResourceManagerManagedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerManagedIdentityPropertiesResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<AzureResourceManagerUserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => AzureResourceManagerUserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

