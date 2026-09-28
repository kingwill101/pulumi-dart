// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_entry_policy_rule.dart';

/// Input properties used for looking up and filtering PolicyTableEntry resources.
class PolicyTableEntryState {
  /// Matching criteria for the policy table entry. See below.
  final pulumi.Input<PolicyTableEntryPolicyRule?>? policyRule;
  /// Rule number for this entry. Changing this value forces a new resource. Lower numbers are evaluated first and take precedence. Enter an integer from 1 to 50,000. Leave gaps between numbers (for example, 100, 110, 120) so you can insert rules later without renumbering.
  final pulumi.Input<String?>? policyRuleNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the transit gateway route table to use for traffic matching this rule.
  final pulumi.Input<String?>? targetRouteTableId;
  /// EC2 Transit Gateway Policy Table identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableEntryState].
  /// [policyRule] Matching criteria for the policy table entry. See below.
  /// [policyRuleNumber] Rule number for this entry. Changing this value forces a new resource. Lower numbers are evaluated first and take precedence. Enter an integer from 1 to 50,000. Leave gaps between numbers (for example, 100, 110, 120) so you can insert rules later without renumbering.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetRouteTableId] ID of the transit gateway route table to use for traffic matching this rule.
  /// [transitGatewayPolicyTableId] EC2 Transit Gateway Policy Table identifier.
  const PolicyTableEntryState({
    this.policyRule,
    this.policyRuleNumber,
    this.region,
    this.targetRouteTableId,
    this.transitGatewayPolicyTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyRule': ?pulumi.Input.mapOptionalInputValue<PolicyTableEntryPolicyRule, Map<String, dynamic>>(policyRule, (value) => value.toMap()),
      'policyRuleNumber': ?policyRuleNumber,
      'region': ?region,
      'targetRouteTableId': ?targetRouteTableId,
      'transitGatewayPolicyTableId': ?transitGatewayPolicyTableId,
    };
  }

  factory PolicyTableEntryState.fromMap(Map<String, dynamic> map) {
    return PolicyTableEntryState(
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTableEntryPolicyRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyRuleNumber: (() { final guardedValue = map['policyRuleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRouteTableId: (() { final guardedValue = map['targetRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayPolicyTableId: (() { final guardedValue = map['transitGatewayPolicyTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
