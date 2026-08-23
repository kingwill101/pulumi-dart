// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_block_custom_response.dart';

class RuleGroupRuleActionBlock {
  /// Defines a custom response for the web request. See Custom Response below for details.
  final pulumi.Input<RuleGroupRuleActionBlockCustomResponse>? customResponse;

  /// Creates a new [RuleGroupRuleActionBlock].
  /// [customResponse] Defines a custom response for the web request. See Custom Response below for details.
  const RuleGroupRuleActionBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionBlockCustomResponse, Map<String, dynamic>>(customResponse, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionBlock(
      customResponse: (() { final guardedValue = map['customResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleActionBlockCustomResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
