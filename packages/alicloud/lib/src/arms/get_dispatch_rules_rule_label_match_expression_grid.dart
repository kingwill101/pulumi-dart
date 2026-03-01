// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dispatch_rules_rule_label_match_expression_grid_label_match_expression_group.dart';

class GetDispatchRulesRuleLabelMatchExpressionGrid {
  /// Sets the dispatch rule.
  final List<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup> labelMatchExpressionGroups;

  /// Creates a new [GetDispatchRulesRuleLabelMatchExpressionGrid].
  /// [labelMatchExpressionGroups] Sets the dispatch rule.
  GetDispatchRulesRuleLabelMatchExpressionGrid({
    required this.labelMatchExpressionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelMatchExpressionGroups': pulumi.Input.encodeList<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup, Map<String, dynamic>>(labelMatchExpressionGroups, (value) => value.toMap()),
    };
  }

  factory GetDispatchRulesRuleLabelMatchExpressionGrid.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleLabelMatchExpressionGrid(
      labelMatchExpressionGroups: pulumi.Input.decodeList<GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup>(map['labelMatchExpressionGroups'], (value) => GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

