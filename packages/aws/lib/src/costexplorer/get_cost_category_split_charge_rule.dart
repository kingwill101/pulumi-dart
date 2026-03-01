// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_split_charge_rule_parameter.dart';

class GetCostCategorySplitChargeRule {
  /// Method that's used to define how to split your source costs across your targets. Valid values are `FIXED`, `PROPORTIONAL`, `EVEN`
  final String method;

  /// Configuration block for the parameters for a split charge method. This is only required for the `FIXED` method. See below.
  final List<GetCostCategorySplitChargeRuleParameter> parameters;

  /// Cost Category value that you want to split.
  final String source;

  /// Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.
  final List<String> targets;

  /// Creates a new [GetCostCategorySplitChargeRule].
  /// [method] Method that's used to define how to split your source costs across your targets. Valid values are `FIXED`, `PROPORTIONAL`, `EVEN`
  /// [parameters] Configuration block for the parameters for a split charge method. This is only required for the `FIXED` method. See below.
  /// [source] Cost Category value that you want to split.
  /// [targets] Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.
  GetCostCategorySplitChargeRule({
    required this.method,
    required this.parameters,
    required this.source,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'parameters':
          pulumi.Input.encodeList<
            GetCostCategorySplitChargeRuleParameter,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'source': source,
      'targets': targets,
    };
  }

  factory GetCostCategorySplitChargeRule.fromMap(Map<String, dynamic> map) {
    return GetCostCategorySplitChargeRule(
      method: map['method'] as String,
      parameters:
          pulumi.Input.decodeList<GetCostCategorySplitChargeRuleParameter>(
            map['parameters'],
            (value) => GetCostCategorySplitChargeRuleParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      source: map['source'] as String,
      targets: (map['targets'] as List).cast<String>(),
    );
  }
}
