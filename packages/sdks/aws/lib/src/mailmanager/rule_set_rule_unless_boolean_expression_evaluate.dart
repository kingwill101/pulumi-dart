// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_unless_boolean_expression_evaluate_analysis.dart';
import 'rule_set_rule_unless_boolean_expression_evaluate_is_in_address_list.dart';

class RuleSetRuleUnlessBooleanExpressionEvaluate {
  /// Add On result to evaluate. See `analysis` Block.
  final pulumi.Input<RuleSetRuleUnlessBooleanExpressionEvaluateAnalysis?>? analysis;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String?>? attribute;
  /// Address-list membership expression.
  final pulumi.Input<RuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList?>? isInAddressList;

  /// Creates a new [RuleSetRuleUnlessBooleanExpressionEvaluate].
  /// [analysis] Add On result to evaluate. See `analysis` Block.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  /// [isInAddressList] Address-list membership expression.
  const RuleSetRuleUnlessBooleanExpressionEvaluate({
    this.analysis,
    this.attribute,
    this.isInAddressList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessBooleanExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
      'isInAddressList': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList, Map<String, dynamic>>(isInAddressList, (value) => value.toMap()),
    };
  }

  factory RuleSetRuleUnlessBooleanExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnlessBooleanExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessBooleanExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isInAddressList: (() { final guardedValue = map['isInAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
