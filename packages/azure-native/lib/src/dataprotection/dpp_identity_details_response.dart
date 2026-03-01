// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Identity details
class DppIdentityDetailsResponse {
  /// The object ID of the service principal object for the managed identity that is used to grant role-based access to an Azure resource.
  final String principalId;
  /// A Globally Unique Identifier (GUID) that represents the Azure AD tenant where the resource is now a member.
  final String tenantId;
  /// The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  final String? type;
  /// Gets or sets the user assigned identities.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [DppIdentityDetailsResponse].
  /// [principalId] The object ID of the service principal object for the managed identity that is used to grant role-based access to an Azure resource.
  /// [tenantId] A Globally Unique Identifier (GUID) that represents the Azure AD tenant where the resource is now a member.
  /// [type] The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  /// [userAssignedIdentities] Gets or sets the user assigned identities.
  DppIdentityDetailsResponse({
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

  factory DppIdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DppIdentityDetailsResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

