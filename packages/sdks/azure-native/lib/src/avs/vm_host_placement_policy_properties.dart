// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM-Host placement policy properties
class VmHostPlacementPolicyProperties {
  /// vm-host placement policy affinity strength (should/must)
  final pulumi.Input<dynamic>? affinityStrength;
  /// placement policy affinity type
  final pulumi.Input<dynamic> affinityType;
  /// placement policy azure hybrid benefit opt-in type
  final pulumi.Input<dynamic>? azureHybridBenefitType;
  /// Display name of the placement policy
  final pulumi.Input<String?>? displayName;
  /// Host members list
  final pulumi.Input<List<String>> hostMembers;
  /// Whether the placement policy is enabled or disabled
  final pulumi.Input<dynamic>? state;
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
  const VmHostPlacementPolicyProperties({
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
      affinityStrength: (() { final guardedValue = map['affinityStrength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      affinityType: pulumi.Input.fromValue(map['affinityType']),
      azureHybridBenefitType: (() { final guardedValue = map['azureHybridBenefitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostMembers: pulumi.Input.fromValue((map['hostMembers'] as List).cast<String>()),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vmMembers: pulumi.Input.fromValue((map['vmMembers'] as List).cast<String>()),
    );
  }
}
