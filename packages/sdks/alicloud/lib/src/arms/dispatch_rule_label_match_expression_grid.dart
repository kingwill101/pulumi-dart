// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_label_match_expression_grid_label_match_expression_group.dart';

class DispatchRuleLabelMatchExpressionGrid {
  /// Sets the dispatch rule. See `label_match_expression_groups` below.
  final pulumi.Input<List<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup>> labelMatchExpressionGroups;

  /// Creates a new [DispatchRuleLabelMatchExpressionGrid].
  /// [labelMatchExpressionGroups] Sets the dispatch rule. See `label_match_expression_groups` below.
  DispatchRuleLabelMatchExpressionGrid({
    required this.labelMatchExpressionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelMatchExpressionGroups': pulumi.Input.mapInputValue<List<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup>, List<Map<String, dynamic>>>(labelMatchExpressionGroups, (value) => pulumi.Input.encodeList<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DispatchRuleLabelMatchExpressionGrid.fromMap(Map<String, dynamic> map) {
    return DispatchRuleLabelMatchExpressionGrid(
      labelMatchExpressionGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup>(map['labelMatchExpressionGroups']!, (value) => DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

