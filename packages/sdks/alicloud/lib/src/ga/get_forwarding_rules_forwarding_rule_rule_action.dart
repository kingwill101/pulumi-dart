// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_action_forward_group_config.dart';

class GetForwardingRulesForwardingRuleRuleAction {
  /// Forwarding configuration.
  final List<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig> forwardGroupConfigs;
  /// Forwarding priority.
  final int order;
  /// Forward action type.
  final String ruleActionType;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleAction].
  /// [forwardGroupConfigs] Forwarding configuration.
  /// [order] Forwarding priority.
  /// [ruleActionType] Forward action type.
  GetForwardingRulesForwardingRuleRuleAction({
    required this.forwardGroupConfigs,
    required this.order,
    required this.ruleActionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardGroupConfigs': pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig, Map<String, dynamic>>(forwardGroupConfigs, (value) => value.toMap()),
      'order': order,
      'ruleActionType': ruleActionType,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleAction.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleAction(
      forwardGroupConfigs: pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig>(map['forwardGroupConfigs'], (value) => GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      ruleActionType: map['ruleActionType'] as String,
    );
  }
}

