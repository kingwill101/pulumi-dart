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
  VpcSecurityGroupRulesExclusiveState({
    pulumi.Output<List<String>>? egressRuleIds,
    pulumi.Output<List<String>>? ingressRuleIds,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
  }) :
      egressRuleIds = pulumi.Input.asOptionalInput<List<String>>(egressRuleIds),
      ingressRuleIds = pulumi.Input.asOptionalInput<List<String>>(ingressRuleIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId);

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
      egressRuleIds: map['egressRuleIds'] == null ? null : pulumi.Output.create<List<String>>((map['egressRuleIds'] as List).cast<String>()),
      ingressRuleIds: map['ingressRuleIds'] == null ? null : pulumi.Output.create<List<String>>((map['ingressRuleIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
    );
  }
}

