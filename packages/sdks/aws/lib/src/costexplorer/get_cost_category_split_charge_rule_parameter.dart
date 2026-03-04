// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final pulumi.Input<String> type;

  /// Parameter values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetCostCategorySplitChargeRuleParameter].
  /// [type] Parameter type.
  /// [values] Parameter values.
  GetCostCategorySplitChargeRuleParameter({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'values': values};
  }

  factory GetCostCategorySplitChargeRuleParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCostCategorySplitChargeRuleParameter(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
