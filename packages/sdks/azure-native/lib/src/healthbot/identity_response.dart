// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Identity for the resource.
class IdentityResponse {
  /// The principal ID of resource identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The identity type. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the Azure Health Bot
  final pulumi.Input<String>? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of resource identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID of resource. This property will only be provided for a system assigned identity.
  /// [type] The identity type. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the Azure Health Bot
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  const IdentityResponse({
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

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
