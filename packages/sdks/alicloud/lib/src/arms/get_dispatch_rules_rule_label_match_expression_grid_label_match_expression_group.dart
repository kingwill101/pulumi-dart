// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dispatch_rules_rule_label_match_expression_grid_label_match_expression_group_label_match_expression.dart';

class GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup {
  /// Sets the dispatch rule.
  final pulumi.Input<List<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression>> labelMatchExpressions;

  /// Creates a new [GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup].
  /// [labelMatchExpressions] Sets the dispatch rule.
  GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup({
    required this.labelMatchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelMatchExpressions': pulumi.Input.mapInputValue<List<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression>, List<Map<String, dynamic>>>(labelMatchExpressions, (value) => pulumi.Input.encodeList<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup(
      labelMatchExpressions: (pulumi.Input.decodeList<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression>(map['labelMatchExpressions'], (value) => GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

