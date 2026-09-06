// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Identity details
class DppIdentityDetailsResponse {
  /// The object ID of the service principal object for the managed identity that is used to grant role-based access to an Azure resource.
  final pulumi.Input<String> principalId;
  /// A Globally Unique Identifier (GUID) that represents the Azure AD tenant where the resource is now a member.
  final pulumi.Input<String> tenantId;
  /// The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  final pulumi.Input<String?>? type;
  /// Gets or sets the user assigned identities.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [DppIdentityDetailsResponse].
  /// [principalId] The object ID of the service principal object for the managed identity that is used to grant role-based access to an Azure resource.
  /// [tenantId] A Globally Unique Identifier (GUID) that represents the Azure AD tenant where the resource is now a member.
  /// [type] The identityType which can be either SystemAssigned, UserAssigned, 'SystemAssigned,UserAssigned' or None
  /// [userAssignedIdentities] Gets or sets the user assigned identities.
  const DppIdentityDetailsResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DppIdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DppIdentityDetailsResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
