// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_value_response.dart';

/// Identity for the virtual machine.
class VirtualMachineIdentityResponse {
  /// The principal id of virtual machine identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;

  /// The tenant id associated with the virtual machine. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;

  /// The type of identity used for the virtual machine. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
  final pulumi.Input<String>? type;

  /// The list of user identities associated with the Virtual Machine. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserAssignedIdentitiesValueResponse>>?
  userAssignedIdentities;

  /// Creates a new [VirtualMachineIdentityResponse].
  /// [principalId] The principal id of virtual machine identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the virtual machine. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the virtual machine. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
  /// [userAssignedIdentities] The list of user identities associated with the Virtual Machine. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  VirtualMachineIdentityResponse({
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
      'userAssignedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, UserAssignedIdentitiesValueResponse>,
            Map<String, Map<String, dynamic>>
          >(
            userAssignedIdentities,
            (value) =>
                pulumi.Input.encodeMapValues<
                  UserAssignedIdentitiesValueResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualMachineIdentityResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<UserAssignedIdentitiesValueResponse>(
            guardedValue,
            (value) => UserAssignedIdentitiesValueResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
