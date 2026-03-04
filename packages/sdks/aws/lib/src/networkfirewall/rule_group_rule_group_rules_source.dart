// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_rules_source_list.dart';
import 'rule_group_rule_group_rules_source_stateful_rule.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions.dart';

class RuleGroupRuleGroupRulesSource {
  /// A configuration block containing **stateful** inspection criteria for a domain list rule group. See Rules Source List below for details.
  final pulumi.Input<RuleGroupRuleGroupRulesSourceRulesSourceList>?
  rulesSourceList;

  /// Stateful inspection criteria, provided in Suricata compatible rules. These rules contain the inspection criteria and the action to take for traffic that matches the criteria, so this type of rule group doesn’t have a separate action setting.
  final pulumi.Input<String>? rulesString;

  /// Set of configuration blocks containing **stateful** inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details.
  final pulumi.Input<List<RuleGroupRuleGroupRulesSourceStatefulRule>>?
  statefulRules;

  /// A configuration block containing **stateless** inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.
  final pulumi.Input<
    RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions
  >?
  statelessRulesAndCustomActions;

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
      'rulesSourceList':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleGroupRulesSourceRulesSourceList,
            Map<String, dynamic>
          >(rulesSourceList, (value) => value.toMap()),
      'rulesString': ?rulesString,
      'statefulRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuleGroupRuleGroupRulesSourceStatefulRule>,
            List<Map<String, dynamic>>
          >(
            statefulRules,
            (value) =>
                pulumi.Input.encodeList<
                  RuleGroupRuleGroupRulesSourceStatefulRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statelessRulesAndCustomActions':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions,
            Map<String, dynamic>
          >(statelessRulesAndCustomActions, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRulesSource.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSource(
      rulesSourceList: (() {
        final guardedValue = map['rulesSourceList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rulesString: (() {
        final guardedValue = map['rulesString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statefulRules: (() {
        final guardedValue = map['statefulRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatefulRule>(
            guardedValue,
            (value) => RuleGroupRuleGroupRulesSourceStatefulRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      statelessRulesAndCustomActions: (() {
        final guardedValue = map['statelessRulesAndCustomActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
