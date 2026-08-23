// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action.dart';
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions {
  /// Set of configuration blocks containing custom action definitions that are available for use by the set of `stateless rule`. See Custom Action below for details.
  final pulumi.Input<List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction>>? customActions;
  /// Set of configuration blocks containing the stateless rules for use in the stateless rule group. See Stateless Rule below for details.
  final pulumi.Input<List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule>> statelessRules;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions].
  /// [customActions] Set of configuration blocks containing custom action definitions that are available for use by the set of `stateless rule`. See Custom Action below for details.
  /// [statelessRules] Set of configuration blocks containing the stateless rules for use in the stateless rule group. See Stateless Rule below for details.
  const RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions({
    this.customActions,
    required this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRules': pulumi.Input.mapInputValue<List<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule>, List<Map<String, dynamic>>>(statelessRules, (value) => pulumi.Input.encodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions(
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction>(guardedValue, (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statelessRules: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule>(map['statelessRules']!, (value) => RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
