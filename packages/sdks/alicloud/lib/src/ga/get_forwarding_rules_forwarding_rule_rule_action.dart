// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule_rule_action_forward_group_config.dart';

class GetForwardingRulesForwardingRuleRuleAction {
  /// Forwarding configuration.
  final pulumi.Input<List<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig>> forwardGroupConfigs;
  /// Forwarding priority.
  final pulumi.Input<int> order;
  /// Forward action type.
  final pulumi.Input<String> ruleActionType;

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
      'forwardGroupConfigs': pulumi.Input.mapInputValue<List<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig>, List<Map<String, dynamic>>>(forwardGroupConfigs, (value) => pulumi.Input.encodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': order,
      'ruleActionType': ruleActionType,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleAction.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleAction(
      forwardGroupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig>(map['forwardGroupConfigs']!, (value) => GetForwardingRulesForwardingRuleRuleActionForwardGroupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      order: pulumi.Input.fromValue(map['order'] as int),
      ruleActionType: pulumi.Input.fromValue(map['ruleActionType'] as String),
    );
  }
}

