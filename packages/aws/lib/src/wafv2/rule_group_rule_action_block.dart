// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_action_block_custom_response.dart';

class RuleGroupRuleActionBlock {
  /// Defines a custom response for the web request. See Custom Response below for details.
  final RuleGroupRuleActionBlockCustomResponse? customResponse;

  /// Creates a new [RuleGroupRuleActionBlock].
  /// [customResponse] Defines a custom response for the web request. See Custom Response below for details.
  RuleGroupRuleActionBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?customResponse == null ? null : customResponse!.toMap(),
    };
  }

  factory RuleGroupRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionBlock(
      customResponse: map['customResponse'] == null ? null : RuleGroupRuleActionBlockCustomResponse.fromMap((map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

