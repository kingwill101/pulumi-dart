// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM-VM placement policy properties
class VmVmPlacementPolicyPropertiesResponse {
  /// placement policy affinity type
  final pulumi.Input<String> affinityType;
  /// Display name of the placement policy
  final pulumi.Input<String>? displayName;
  /// The provisioning state
  final pulumi.Input<String> provisioningState;
  /// Whether the placement policy is enabled or disabled
  final pulumi.Input<String>? state;
  /// Placement Policy type
  /// Expected value is 'VmVm'.
  final pulumi.Input<String> type;
  /// Virtual machine members list
  final pulumi.Input<List<String>> vmMembers;

  /// Creates a new [VmVmPlacementPolicyPropertiesResponse].
  /// [affinityType] placement policy affinity type
  /// [displayName] Display name of the placement policy
  /// [provisioningState] The provisioning state
  /// [state] Whether the placement policy is enabled or disabled
  /// [type] Placement Policy type
  /// [vmMembers] Virtual machine members list
  const VmVmPlacementPolicyPropertiesResponse({
    required this.affinityType,
    this.displayName,
    required this.provisioningState,
    this.state,
    required this.type,
    required this.vmMembers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityType': affinityType,
      'displayName': ?displayName,
      'provisioningState': provisioningState,
      'state': ?state,
      'type': type,
      'vmMembers': vmMembers,
    };
  }

  factory VmVmPlacementPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VmVmPlacementPolicyPropertiesResponse(
      affinityType: pulumi.Input.fromValue(map['affinityType'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vmMembers: pulumi.Input.fromValue((map['vmMembers'] as List).cast<String>()),
    );
  }
}

