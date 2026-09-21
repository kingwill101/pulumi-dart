// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_entry_policy_rule.dart';

/// {@template pulumi_ec2transitgateway_policy_table_entry_policy_table_entry_args_doc}
/// The set of arguments for PolicyTableEntry.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_policy_table_entry_policy_table_entry_args_doc}
class PolicyTableEntryArgs {
  /// Matching criteria for the policy table entry. See below.
  final pulumi.Input<PolicyTableEntryPolicyRule?>? policyRule;
  /// Rule number for this entry. Changing this value forces a new resource. Lower numbers are evaluated first and take precedence. Enter an integer from 1 to 50,000. Leave gaps between numbers (for example, 100, 110, 120) so you can insert rules later without renumbering.
  final pulumi.Input<String> policyRuleNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the transit gateway route table to use for traffic matching this rule.
  final pulumi.Input<String> targetRouteTableId;
  /// EC2 Transit Gateway Policy Table identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableEntryArgs].
  /// [policyRule] Matching criteria for the policy table entry. See below.
  /// [policyRuleNumber] Rule number for this entry. Changing this value forces a new resource. Lower numbers are evaluated first and take precedence. Enter an integer from 1 to 50,000. Leave gaps between numbers (for example, 100, 110, 120) so you can insert rules later without renumbering.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetRouteTableId] ID of the transit gateway route table to use for traffic matching this rule.
  /// [transitGatewayPolicyTableId] EC2 Transit Gateway Policy Table identifier.
  const PolicyTableEntryArgs({
    this.policyRule,
    required this.policyRuleNumber,
    this.region,
    required this.targetRouteTableId,
    required this.transitGatewayPolicyTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyRule': ?pulumi.Input.mapOptionalInputValue<PolicyTableEntryPolicyRule, Map<String, dynamic>>(policyRule, (value) => value.toMap()),
      'policyRuleNumber': policyRuleNumber,
      'region': ?region,
      'targetRouteTableId': targetRouteTableId,
      'transitGatewayPolicyTableId': transitGatewayPolicyTableId,
    };
  }

  factory PolicyTableEntryArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTableEntryArgs(
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTableEntryPolicyRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyRuleNumber: pulumi.Input.fromValue(map['policyRuleNumber'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRouteTableId: pulumi.Input.fromValue(map['targetRouteTableId'] as String),
      transitGatewayPolicyTableId: pulumi.Input.fromValue(map['transitGatewayPolicyTableId'] as String),
    );
  }
}
