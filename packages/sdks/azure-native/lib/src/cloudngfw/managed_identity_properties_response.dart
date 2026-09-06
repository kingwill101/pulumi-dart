// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// The properties of the managed service identities assigned to this resource.
class ManagedIdentityPropertiesResponse {
  /// The active directory identifier of this principal.
  final pulumi.Input<String> principalId;
  /// The Active Directory tenant id of the principal.
  final pulumi.Input<String> tenantId;
  /// The type of managed identity assigned to this resource.
  final pulumi.Input<String> type;
  /// The identities assigned to this resource by the user.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityPropertiesResponse].
  /// [principalId] The active directory identifier of this principal.
  /// [tenantId] The Active Directory tenant id of the principal.
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  const ManagedIdentityPropertiesResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityPropertiesResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
