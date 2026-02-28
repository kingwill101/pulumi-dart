// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_rules_source_list.dart';
import 'rule_group_rule_group_rules_source_stateful_rule.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions.dart';

class RuleGroupRuleGroupRulesSource {
  /// A configuration block containing **stateful** inspection criteria for a domain list rule group. See Rules Source List below for details.
  final RuleGroupRuleGroupRulesSourceRulesSourceList? rulesSourceList;
  /// Stateful inspection criteria, provided in Suricata compatible rules. These rules contain the inspection criteria and the action to take for traffic that matches the criteria, so this type of rule group doesn’t have a separate action setting.
  final String? rulesString;
  /// Set of configuration blocks containing **stateful** inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details.
  final List<RuleGroupRuleGroupRulesSourceStatefulRule>? statefulRules;
  /// A configuration block containing **stateless** inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions? statelessRulesAndCustomActions;

  /// Creates a new [RuleGroupRuleGroupRulesSource].
  /// [rulesSourceList] A configuration block containing **stateful** inspection criteria for a domain list rule group. See Rules Source List below for details.
  /// [rulesString] Stateful inspection criteria, provided in Suricata compatible rules. These rules contain the inspection criteria and the action to take for traffic that matches the criteria, so this type of rule group doesn’t have a separate action setting.
  /// [statefulRules] Set of configuration blocks containing **stateful** inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details.
  /// [statelessRulesAndCustomActions] A configuration block containing **stateless** inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.
  RuleGroupRuleGroupRulesSource({
    this.rulesSourceList,
    this.rulesString,
    this.statefulRules,
    this.statelessRulesAndCustomActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesSourceList': ?rulesSourceList == null ? null : rulesSourceList!.toMap(),
      'rulesString': ?rulesString,
      'statefulRules': ?statefulRules == null ? null : pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatefulRule, Map<String, dynamic>>(statefulRules!, (value) => value.toMap()),
      'statelessRulesAndCustomActions': ?statelessRulesAndCustomActions == null ? null : statelessRulesAndCustomActions!.toMap(),
    };
  }

  factory RuleGroupRuleGroupRulesSource.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSource(
      rulesSourceList: map['rulesSourceList'] == null ? null : RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap((map['rulesSourceList'] as Map).cast<String, dynamic>()),
      rulesString: map['rulesString'] == null ? null : map['rulesString'] as String,
      statefulRules: map['statefulRules'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatefulRule>(map['statefulRules'], (value) => RuleGroupRuleGroupRulesSourceStatefulRule.fromMap((value as Map).cast<String, dynamic>())),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] == null ? null : RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions.fromMap((map['statelessRulesAndCustomActions'] as Map).cast<String, dynamic>()),
    );
  }
}

