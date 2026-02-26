// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_group_rules_source_rules_source_list/rule_group_rule_group_rules_source_rules_source_list.dart';
import '../rule_group_rule_group_rules_source_stateful_rule/rule_group_rule_group_rules_source_stateful_rule.dart';
import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions.dart';

class RuleGroupRuleGroupRulesSource {
  /// A configuration block containing **stateful** inspection criteria for a domain list rule group. See Rules Source List below for details.
  final RuleGroupRuleGroupRulesSourceRulesSourceList? rulesSourceList;

  /// Stateful inspection criteria, provided in Suricata compatible rules. These rules contain the inspection criteria and the action to take for traffic that matches the criteria, so this type of rule group doesn’t have a separate action setting.
  final String? rulesString;

  /// Set of configuration blocks containing **stateful** inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details.
  final List<RuleGroupRuleGroupRulesSourceStatefulRule>? statefulRules;

  /// A configuration block containing **stateless** inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions?
      statelessRulesAndCustomActions;

  RuleGroupRuleGroupRulesSource({
    this.rulesSourceList,
    this.rulesString,
    this.statefulRules,
    this.statelessRulesAndCustomActions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rulesSourceListValue = rulesSourceList;
    if (rulesSourceListValue != null) {
      map['rulesSourceList'] = rulesSourceListValue.toMap();
    }
    final rulesStringValue = rulesString;
    if (rulesStringValue != null) {
      map['rulesString'] = rulesStringValue;
    }
    final statefulRulesValue = statefulRules;
    if (statefulRulesValue != null) {
      map['statefulRules'] = Input.encodeList<
          RuleGroupRuleGroupRulesSourceStatefulRule,
          Map<String, dynamic>>(statefulRulesValue, (value) => value.toMap());
    }
    final statelessRulesAndCustomActionsValue = statelessRulesAndCustomActions;
    if (statelessRulesAndCustomActionsValue != null) {
      map['statelessRulesAndCustomActions'] =
          statelessRulesAndCustomActionsValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleGroupRulesSource.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSource(
      rulesSourceList: map['rulesSourceList'] == null
          ? null
          : RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(
              (map['rulesSourceList'] as Map).cast<String, dynamic>()),
      rulesString:
          map['rulesString'] == null ? null : map['rulesString'] as String,
      statefulRules: map['statefulRules'] == null
          ? null
          : Input.decodeList<RuleGroupRuleGroupRulesSourceStatefulRule>(
              map['statefulRules'],
              (value) => RuleGroupRuleGroupRulesSourceStatefulRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] ==
              null
          ? null
          : RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions.fromMap(
              (map['statelessRulesAndCustomActions'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
