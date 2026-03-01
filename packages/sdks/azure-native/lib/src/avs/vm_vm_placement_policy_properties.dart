// ignore_for_file: unused_element, unnecessary_cast


/// VM-VM placement policy properties
class VmVmPlacementPolicyProperties {
  /// placement policy affinity type
  final String affinityType;
  /// Display name of the placement policy
  final String? displayName;
  /// Whether the placement policy is enabled or disabled
  final String? state;
  /// Placement Policy type
  /// Expected value is 'VmVm'.
  final String type;
  /// Virtual machine members list
  final List<String> vmMembers;

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
      affinityType: map['affinityType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      vmMembers: (map['vmMembers'] as List).cast<String>(),
    );
  }
}

