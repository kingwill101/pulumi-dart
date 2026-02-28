// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateful_rule_header.dart';
import 'rule_group_rule_group_rules_source_stateful_rule_rule_option.dart';

class RuleGroupRuleGroupRulesSourceStatefulRule {
  /// Action to take with packets in a traffic flow when the flow matches the stateful rule criteria. For all actions, AWS Network Firewall performs the specified action and discontinues stateful inspection of the traffic flow. Valid values: `ALERT`, `DROP`, `PASS`, or `REJECT`.
  final String action;
  /// A configuration block containing the stateful 5-tuple inspection criteria for the rule, used to inspect traffic flows. See Header below for details.
  final RuleGroupRuleGroupRulesSourceStatefulRuleHeader header;
  /// Set of configuration blocks containing additional settings for a stateful rule. See Rule Option below for details.
  final List<RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption> ruleOptions;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatefulRule].
  /// [action] Action to take with packets in a traffic flow when the flow matches the stateful rule criteria. For all actions, AWS Network Firewall performs the specified action and discontinues stateful inspection of the traffic flow. Valid values: `ALERT`, `DROP`, `PASS`, or `REJECT`.
  /// [header] A configuration block containing the stateful 5-tuple inspection criteria for the rule, used to inspect traffic flows. See Header below for details.
  /// [ruleOptions] Set of configuration blocks containing additional settings for a stateful rule. See Rule Option below for details.
  RuleGroupRuleGroupRulesSourceStatefulRule({
    required this.action,
    required this.header,
    required this.ruleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'header': header.toMap(),
      'ruleOptions': pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption, Map<String, dynamic>>(ruleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatefulRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatefulRule(
      action: map['action'] as String,
      header: RuleGroupRuleGroupRulesSourceStatefulRuleHeader.fromMap((map['header'] as Map).cast<String, dynamic>()),
      ruleOptions: pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption>(map['ruleOptions'], (value) => RuleGroupRuleGroupRulesSourceStatefulRuleRuleOption.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

