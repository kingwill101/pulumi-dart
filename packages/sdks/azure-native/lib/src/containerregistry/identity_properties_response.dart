// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_properties_response.dart';

/// Managed identity for the resource.
class IdentityPropertiesResponse {
  /// The principal ID of resource identity.
  final String? principalId;
  /// The tenant ID of resource.
  final String? tenantId;
  /// The identity type.
  final String? type;
  /// The list of user identities associated with the resource. The user identity
  /// dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
  /// providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserIdentityPropertiesResponse>? userAssignedIdentities;

  /// Creates a new [IdentityPropertiesResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity
  IdentityPropertiesResponse({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentityPropertiesResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityPropertiesResponse>(map['userAssignedIdentities'], (value) => UserIdentityPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

