// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_unless_verdict_expression_evaluate_analysis.dart';

class RuleSetRuleUnlessVerdictExpressionEvaluate {
  /// Add On result to evaluate. See `analysis` Block.
  final pulumi.Input<RuleSetRuleUnlessVerdictExpressionEvaluateAnalysis>? analysis;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String>? attribute;

  /// Creates a new [RuleSetRuleUnlessVerdictExpressionEvaluate].
  /// [analysis] Add On result to evaluate. See `analysis` Block.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleUnlessVerdictExpressionEvaluate({
    this.analysis,
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessVerdictExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
    };
  }

  factory RuleSetRuleUnlessVerdictExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnlessVerdictExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessVerdictExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
