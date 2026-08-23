// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_boolean_expression_evaluate_analysis.dart';
import 'rule_set_rule_condition_boolean_expression_evaluate_is_in_address_list.dart';

class RuleSetRuleConditionBooleanExpressionEvaluate {
  /// Add On result to evaluate. See `analysis` Block.
  final pulumi.Input<RuleSetRuleConditionBooleanExpressionEvaluateAnalysis>? analysis;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String>? attribute;
  /// Address-list membership expression.
  final pulumi.Input<RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList>? isInAddressList;

  /// Creates a new [RuleSetRuleConditionBooleanExpressionEvaluate].
  /// [analysis] Add On result to evaluate. See `analysis` Block.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  /// [isInAddressList] Address-list membership expression.
  const RuleSetRuleConditionBooleanExpressionEvaluate({
    this.analysis,
    this.attribute,
    this.isInAddressList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionBooleanExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
      'isInAddressList': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList, Map<String, dynamic>>(isInAddressList, (value) => value.toMap()),
    };
  }

  factory RuleSetRuleConditionBooleanExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionBooleanExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionBooleanExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isInAddressList: (() { final guardedValue = map['isInAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
