// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcSecurityGroupRulesExclusive resources.
class VpcSecurityGroupRulesExclusiveState {
  /// Egress rule IDs.
  final pulumi.Input<List<String>>? egressRuleIds;
  /// Ingress rule IDs.
  final pulumi.Input<List<String>>? ingressRuleIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the security group.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [VpcSecurityGroupRulesExclusiveState].
  /// [egressRuleIds] Egress rule IDs.
  /// [ingressRuleIds] Ingress rule IDs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] ID of the security group.
  const VpcSecurityGroupRulesExclusiveState({
    this.egressRuleIds,
    this.ingressRuleIds,
    this.region,
    this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressRuleIds': ?egressRuleIds,
      'ingressRuleIds': ?ingressRuleIds,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory VpcSecurityGroupRulesExclusiveState.fromMap(Map<String, dynamic> map) {
    return VpcSecurityGroupRulesExclusiveState(
      egressRuleIds: (() { final guardedValue = map['egressRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ingressRuleIds: (() { final guardedValue = map['ingressRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

