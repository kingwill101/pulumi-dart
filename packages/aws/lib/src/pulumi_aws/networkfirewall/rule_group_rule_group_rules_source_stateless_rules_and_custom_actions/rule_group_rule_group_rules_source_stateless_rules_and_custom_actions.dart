// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action.dart';
import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions {
  /// Set of configuration blocks containing custom action definitions that are available for use by the set of `stateless rule`. See Custom Action below for details.
  final List<
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction>?
      customActions;

  /// Set of configuration blocks containing the stateless rules for use in the stateless rule group. See Stateless Rule below for details.
  final List<
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule>
      statelessRules;

  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions({
    this.customActions,
    required this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customActionsValue = customActions;
    if (customActionsValue != null) {
      map['customActions'] = pulumi.Input.encodeList<
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction,
          Map<String, dynamic>>(customActionsValue, (value) => value.toMap());
    }
    map['statelessRules'] = pulumi.Input.encodeList<
        RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule,
        Map<String, dynamic>>(statelessRules, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions(
      customActions: map['customActions'] == null
          ? null
          : pulumi.Input.decodeList<
                  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction>(
              map['customActions'],
              (value) =>
                  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction
                      .fromMap((value as Map).cast<String, dynamic>())),
      statelessRules: pulumi.Input.decodeList<
              RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule>(
          map['statelessRules'],
          (value) =>
              RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
