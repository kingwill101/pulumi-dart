// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response.dart';

/// Identity for the container group.
class ContainerGroupIdentityResponse {
  /// The principal id of the container group identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id associated with the container group. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  final pulumi.Input<String?>? type;
  /// The list of user identities associated with the container group.
  final pulumi.Input<Map<String, UserAssignedIdentitiesResponse>?>? userAssignedIdentities;

  /// Creates a new [ContainerGroupIdentityResponse].
  /// [principalId] The principal id of the container group identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the container group. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  /// [userAssignedIdentities] The list of user identities associated with the container group.
  const ContainerGroupIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentitiesResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerGroupIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponse>(guardedValue, (value) => UserAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
