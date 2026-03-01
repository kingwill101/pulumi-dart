// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_value_response.dart';

/// Identity for the virtual machine.
class VirtualMachineIdentityResponse {
  /// The principal id of virtual machine identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant id associated with the virtual machine. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the virtual machine. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
  final String? type;
  /// The list of user identities associated with the Virtual Machine. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserAssignedIdentitiesValueResponse>? userAssignedIdentities;

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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentitiesValueResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineIdentityResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentitiesValueResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentitiesValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

