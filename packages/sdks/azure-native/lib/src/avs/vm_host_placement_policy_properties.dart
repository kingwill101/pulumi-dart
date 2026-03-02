// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM-Host placement policy properties
class VmHostPlacementPolicyProperties {
  /// vm-host placement policy affinity strength (should/must)
  final pulumi.Input<String>? affinityStrength;
  /// placement policy affinity type
  final pulumi.Input<String> affinityType;
  /// placement policy azure hybrid benefit opt-in type
  final pulumi.Input<String>? azureHybridBenefitType;
  /// Display name of the placement policy
  final pulumi.Input<String>? displayName;
  /// Host members list
  final pulumi.Input<List<String>> hostMembers;
  /// Whether the placement policy is enabled or disabled
  final pulumi.Input<String>? state;
  /// Placement Policy type
  /// Expected value is 'VmHost'.
  final pulumi.Input<String> type;
  /// Virtual machine members list
  final pulumi.Input<List<String>> vmMembers;

  /// Creates a new [VmHostPlacementPolicyProperties].
  /// [affinityStrength] vm-host placement policy affinity strength (should/must)
  /// [affinityType] placement policy affinity type
  /// [azureHybridBenefitType] placement policy azure hybrid benefit opt-in type
  /// [displayName] Display name of the placement policy
  /// [hostMembers] Host members list
  /// [state] Whether the placement policy is enabled or disabled
  /// [type] Placement Policy type
  /// [vmMembers] Virtual machine members list
  VmHostPlacementPolicyProperties({
    this.affinityStrength,
    required this.affinityType,
    this.azureHybridBenefitType,
    this.displayName,
    required this.hostMembers,
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
      'state': ?state,
      'type': type,
      'vmMembers': vmMembers,
    };
  }

  factory VmHostPlacementPolicyProperties.fromMap(Map<String, dynamic> map) {
    return VmHostPlacementPolicyProperties(
      affinityStrength: map['affinityStrength'] == null ? null : (map['affinityStrength']! as String).input(),
      affinityType: (map['affinityType'] as String).input(),
      azureHybridBenefitType: map['azureHybridBenefitType'] == null ? null : (map['azureHybridBenefitType']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hostMembers: ((map['hostMembers'] as List).cast<String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      vmMembers: ((map['vmMembers'] as List).cast<String>()).input(),
    );
  }
}

