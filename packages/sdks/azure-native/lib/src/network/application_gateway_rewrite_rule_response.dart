// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_action_set_response.dart';
import 'application_gateway_rewrite_rule_condition_response.dart';

/// Rewrite rule of an application gateway.
class ApplicationGatewayRewriteRuleResponse {
  /// Set of actions to be done as part of the rewrite Rule.
  final pulumi.Input<ApplicationGatewayRewriteRuleActionSetResponse>? actionSet;
  /// Conditions based on which the action set execution will be evaluated.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleConditionResponse>>? conditions;
  /// Name of the rewrite rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Rule Sequence of the rewrite rule that determines the order of execution of a particular rule in a RewriteRuleSet.
  final pulumi.Input<int>? ruleSequence;

  /// Creates a new [ApplicationGatewayRewriteRuleResponse].
  /// [actionSet] Set of actions to be done as part of the rewrite Rule.
  /// [conditions] Conditions based on which the action set execution will be evaluated.
  /// [name] Name of the rewrite rule that is unique within an Application Gateway.
  /// [ruleSequence] Rule Sequence of the rewrite rule that determines the order of execution of a particular rule in a RewriteRuleSet.
  ApplicationGatewayRewriteRuleResponse({
    this.actionSet,
    this.conditions,
    this.name,
    this.ruleSequence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionSet': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayRewriteRuleActionSetResponse, Map<String, dynamic>>(actionSet, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ruleSequence': ?ruleSequence,
    };
  }

  factory ApplicationGatewayRewriteRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleResponse(
      actionSet: (() { final guardedValue = map['actionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayRewriteRuleActionSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleConditionResponse>(guardedValue, (value) => ApplicationGatewayRewriteRuleConditionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSequence: (() { final guardedValue = map['ruleSequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

