// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_verdict_expression_evaluate_analysis.dart';

class RuleSetRuleConditionVerdictExpressionEvaluate {
  /// Add On result to evaluate. See `analysis` Block.
  final pulumi.Input<RuleSetRuleConditionVerdictExpressionEvaluateAnalysis?>? analysis;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String?>? attribute;

  /// Creates a new [RuleSetRuleConditionVerdictExpressionEvaluate].
  /// [analysis] Add On result to evaluate. See `analysis` Block.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleConditionVerdictExpressionEvaluate({
    this.analysis,
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionVerdictExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
    };
  }

  factory RuleSetRuleConditionVerdictExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionVerdictExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionVerdictExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
