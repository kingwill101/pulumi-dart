// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_rule_action_forward_group_config.dart';

class ForwardingRuleRuleAction {
  /// Forwarding configuration. See `forward_group_config` below.
  /// > **NOTE:** From version 1.207.0, We recommend that you do not use `forward_group_config`, and we recommend that you use the `rule_action_type` and `rule_action_value` to configure forwarding actions.
  final pulumi.Input<ForwardingRuleRuleActionForwardGroupConfig>? forwardGroupConfig;
  /// Forwarding priority.
  final pulumi.Input<int> order;
  /// The type of the forwarding action. Valid values: `ForwardGroup`, `Redirect`, `FixResponse`, `Rewrite`, `AddHeader`, `RemoveHeader`, `Drop`.
  final pulumi.Input<String> ruleActionType;
  /// The value of the forwarding action type. For more information, see [How to use it](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createforwardingrules).
  final pulumi.Input<String>? ruleActionValue;

  /// Creates a new [ForwardingRuleRuleAction].
  /// [forwardGroupConfig] Forwarding configuration. See `forward_group_config` below.
  /// [order] Forwarding priority.
  /// [ruleActionType] The type of the forwarding action. Valid values: `ForwardGroup`, `Redirect`, `FixResponse`, `Rewrite`, `AddHeader`, `RemoveHeader`, `Drop`.
  /// [ruleActionValue] The value of the forwarding action type. For more information, see [How to use it](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createforwardingrules).
  ForwardingRuleRuleAction({
    this.forwardGroupConfig,
    required this.order,
    required this.ruleActionType,
    this.ruleActionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardGroupConfig': ?pulumi.Input.mapOptionalInputValue<ForwardingRuleRuleActionForwardGroupConfig, Map<String, dynamic>>(forwardGroupConfig, (value) => value.toMap()),
      'order': order,
      'ruleActionType': ruleActionType,
      'ruleActionValue': ?ruleActionValue,
    };
  }

  factory ForwardingRuleRuleAction.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleAction(
      forwardGroupConfig: map['forwardGroupConfig'] == null ? null : (ForwardingRuleRuleActionForwardGroupConfig.fromMap((map['forwardGroupConfig']! as Map).cast<String, dynamic>())).input(),
      order: (map['order'] as int).input(),
      ruleActionType: (map['ruleActionType'] as String).input(),
      ruleActionValue: map['ruleActionValue'] == null ? null : (map['ruleActionValue']! as String).input(),
    );
  }
}

