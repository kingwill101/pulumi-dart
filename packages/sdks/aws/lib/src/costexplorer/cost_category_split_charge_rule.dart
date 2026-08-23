// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_split_charge_rule_parameter.dart';

class CostCategorySplitChargeRule {
  /// Method that's used to define how to split your source costs across your targets. Valid values are `FIXED`, `PROPORTIONAL`, `EVEN`
  final pulumi.Input<String> method;
  /// Configuration block for the parameters for a split charge method. This is only required for the `FIXED` method. See below.
  final pulumi.Input<List<CostCategorySplitChargeRuleParameter>>? parameters;
  /// Cost Category value that you want to split.
  final pulumi.Input<String> source;
  /// Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.
  final pulumi.Input<List<String>> targets;

  /// Creates a new [CostCategorySplitChargeRule].
  /// [method] Method that's used to define how to split your source costs across your targets. Valid values are `FIXED`, `PROPORTIONAL`, `EVEN`
  /// [parameters] Configuration block for the parameters for a split charge method. This is only required for the `FIXED` method. See below.
  /// [source] Cost Category value that you want to split.
  /// [targets] Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.
  const CostCategorySplitChargeRule({
    required this.method,
    this.parameters,
    required this.source,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<CostCategorySplitChargeRuleParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<CostCategorySplitChargeRuleParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': source,
      'targets': targets,
    };
  }

  factory CostCategorySplitChargeRule.fromMap(Map<String, dynamic> map) {
    return CostCategorySplitChargeRule(
      method: pulumi.Input.fromValue(map['method'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CostCategorySplitChargeRuleParameter>(guardedValue, (value) => CostCategorySplitChargeRuleParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      targets: pulumi.Input.fromValue((map['targets'] as List).cast<String>()),
    );
  }
}
