// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_router_nat_rule_action/get_router_nat_rule_action.dart';

class GetRouterNatRule {
  /// The action to be enforced for traffic that matches this rule.
  final List<GetRouterNatRuleAction> actions;

  /// An optional description of this rule.
  final String description;

  /// CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
  /// If it evaluates to true, the corresponding action is enforced.
  ///
  /// The following examples are valid match expressions for public NAT:
  ///
  /// "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"
  ///
  /// "destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'"
  ///
  /// The following example is a valid match expression for private NAT:
  ///
  /// "nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1'"
  final String match;

  /// An integer uniquely identifying a rule in the list.
  /// The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT.
  final int ruleNumber;

  GetRouterNatRule({
    required this.actions,
    required this.description,
    required this.match,
    required this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<GetRouterNatRuleAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['description'] = description;
    map['match'] = match;
    map['ruleNumber'] = ruleNumber;
    return map;
  }

  factory GetRouterNatRule.fromMap(Map<String, dynamic> map) {
    return GetRouterNatRule(
      actions: Input.decodeList<GetRouterNatRuleAction>(
          map['actions'],
          (value) => GetRouterNatRuleAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      match: map['match'] as String,
      ruleNumber: map['ruleNumber'] as int,
    );
  }
}
