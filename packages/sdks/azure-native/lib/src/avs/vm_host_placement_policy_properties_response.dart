// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VM-Host placement policy properties
class VmHostPlacementPolicyPropertiesResponse {
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

  /// The provisioning state
  final pulumi.Input<String> provisioningState;

  /// Whether the placement policy is enabled or disabled
  final pulumi.Input<String>? state;

  /// Placement Policy type
  /// Expected value is 'VmHost'.
  final pulumi.Input<String> type;

  /// Virtual machine members list
  final pulumi.Input<List<String>> vmMembers;

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

  factory VmHostPlacementPolicyPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmHostPlacementPolicyPropertiesResponse(
      affinityStrength: (() {
        final guardedValue = map['affinityStrength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      affinityType: pulumi.Input.fromValue(map['affinityType'] as String),
      azureHybridBenefitType: (() {
        final guardedValue = map['azureHybridBenefitType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostMembers: pulumi.Input.fromValue(
        (map['hostMembers'] as List).cast<String>(),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vmMembers: pulumi.Input.fromValue(
        (map['vmMembers'] as List).cast<String>(),
      ),
    );
  }
}
