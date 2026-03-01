// ignore_for_file: unused_element, unnecessary_cast


/// VM-Host placement policy properties
class VmHostPlacementPolicyPropertiesResponse {
  /// vm-host placement policy affinity strength (should/must)
  final String? affinityStrength;
  /// placement policy affinity type
  final String affinityType;
  /// placement policy azure hybrid benefit opt-in type
  final String? azureHybridBenefitType;
  /// Display name of the placement policy
  final String? displayName;
  /// Host members list
  final List<String> hostMembers;
  /// The provisioning state
  final String provisioningState;
  /// Whether the placement policy is enabled or disabled
  final String? state;
  /// Placement Policy type
  /// Expected value is 'VmHost'.
  final String type;
  /// Virtual machine members list
  final List<String> vmMembers;

  /// Creates a new [VmHostPlacementPolicyPropertiesResponse].
  /// [affinityStrength] vm-host placement policy affinity strength (should/must)
  /// [affinityType] placement policy affinity type
  /// [azureHybridBenefitType] placement policy azure hybrid benefit opt-in type
  /// [displayName] Display name of the placement policy
  /// [hostMembers] Host members list
  /// [provisioningState] The provisioning state
  /// [state] Whether the placement policy is enabled or disabled
  /// [type] Placement Policy type
  /// [vmMembers] Virtual machine members list
  VmHostPlacementPolicyPropertiesResponse({
    this.affinityStrength,
    required this.affinityType,
    this.azureHybridBenefitType,
    this.displayName,
    required this.hostMembers,
    required this.provisioningState,
    this.state,
    required this.type,
    required this.vmMembers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityStrength': ?affinityStrength,
      'affinityType': affinityType,
      'azureHybridBenefitType': ?azureHybridBenefitType,
      'displayName': ?displayName,
      'hostMembers': hostMembers,
      'provisioningState': provisioningState,
      'state': ?state,
      'type': type,
      'vmMembers': vmMembers,
    };
  }

  factory VmHostPlacementPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VmHostPlacementPolicyPropertiesResponse(
      affinityStrength: map['affinityStrength'] == null ? null : map['affinityStrength'] as String,
      affinityType: map['affinityType'] as String,
      azureHybridBenefitType: map['azureHybridBenefitType'] == null ? null : map['azureHybridBenefitType'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      hostMembers: (map['hostMembers'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      vmMembers: (map['vmMembers'] as List).cast<String>(),
    );
  }
}

