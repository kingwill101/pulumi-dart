// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_label_match_expression_grid_label_match_expression_group_label_match_expression.dart';

class DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup {
  /// Sets the dispatch rule. See `label_match_expressions` below.
  final List<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression> labelMatchExpressions;

  /// Creates a new [DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup].
  /// [labelMatchExpressions] Sets the dispatch rule. See `label_match_expressions` below.
  DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup({
    required this.labelMatchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelMatchExpressions': pulumi.Input.encodeList<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression, Map<String, dynamic>>(labelMatchExpressions, (value) => value.toMap()),
    };
  }

  factory DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup.fromMap(Map<String, dynamic> map) {
    return DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup(
      labelMatchExpressions: pulumi.Input.decodeList<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression>(map['labelMatchExpressions'], (value) => DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

