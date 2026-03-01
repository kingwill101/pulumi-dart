// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_security_group_rules_exclusive_vpc_security_group_rules_exclusive_args_doc}
/// The set of arguments for VpcSecurityGroupRulesExclusive.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_security_group_rules_exclusive_vpc_security_group_rules_exclusive_args_doc}
class VpcSecurityGroupRulesExclusiveArgs {
  /// Egress rule IDs.
  final pulumi.Input<List<String>> egressRuleIds;
  /// Ingress rule IDs.
  final pulumi.Input<List<String>> ingressRuleIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the security group.
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [VpcSecurityGroupRulesExclusiveArgs].
  /// [egressRuleIds] Egress rule IDs.
  /// [ingressRuleIds] Ingress rule IDs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] ID of the security group.
  VpcSecurityGroupRulesExclusiveArgs({
    required pulumi.Output<List<String>> egressRuleIds,
    required pulumi.Output<List<String>> ingressRuleIds,
    pulumi.Output<String>? region,
    required pulumi.Output<String> securityGroupId,
  }) :
      egressRuleIds = pulumi.Input.asInput<List<String>>(egressRuleIds),
      ingressRuleIds = pulumi.Input.asInput<List<String>>(ingressRuleIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressRuleIds': egressRuleIds,
      'ingressRuleIds': ingressRuleIds,
      'region': ?region,
      'securityGroupId': securityGroupId,
    };
  }

  factory VpcSecurityGroupRulesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return VpcSecurityGroupRulesExclusiveArgs(
      egressRuleIds: pulumi.Output.create<List<String>>((map['egressRuleIds'] as List).cast<String>()),
      ingressRuleIds: pulumi.Output.create<List<String>>((map['ingressRuleIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: pulumi.Output.create<String>(map['securityGroupId'] as String),
    );
  }
}

