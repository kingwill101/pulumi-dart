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
  VmVmPlacementPolicyPropertiesResponse({
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
      affinityType: (map['affinityType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      vmMembers: ((map['vmMembers'] as List).cast<String>()).input(),
    );
  }
}

