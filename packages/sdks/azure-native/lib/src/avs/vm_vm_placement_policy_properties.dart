// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM-VM placement policy properties
class VmVmPlacementPolicyProperties {
  /// placement policy affinity type
  final pulumi.Input<String> affinityType;
  /// Display name of the placement policy
  final pulumi.Input<String>? displayName;
  /// Whether the placement policy is enabled or disabled
  final pulumi.Input<String>? state;
  /// Placement Policy type
  /// Expected value is 'VmVm'.
  final pulumi.Input<String> type;
  /// Virtual machine members list
  final pulumi.Input<List<String>> vmMembers;

  /// Creates a new [VmVmPlacementPolicyProperties].
  /// [affinityType] placement policy affinity type
  /// [displayName] Display name of the placement policy
  /// [state] Whether the placement policy is enabled or disabled
  /// [type] Placement Policy type
  /// [vmMembers] Virtual machine members list
  VmVmPlacementPolicyProperties({
    required this.affinityType,
    this.displayName,
    this.state,
    required this.type,
    required this.vmMembers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityType': affinityType,
      'displayName': ?displayName,
      'state': ?state,
      'type': type,
      'vmMembers': vmMembers,
    };
  }

  factory VmVmPlacementPolicyProperties.fromMap(Map<String, dynamic> map) {
    return VmVmPlacementPolicyProperties(
      affinityType: (map['affinityType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      vmMembers: ((map['vmMembers'] as List).cast<String>()).input(),
    );
  }
}

