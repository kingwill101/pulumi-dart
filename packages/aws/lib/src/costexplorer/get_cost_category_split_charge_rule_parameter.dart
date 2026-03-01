// ignore_for_file: unused_element, unnecessary_cast


class GetCostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final String type;
  /// Parameter values.
  final List<String> values;

  /// Creates a new [GetCostCategorySplitChargeRuleParameter].
  /// [type] Parameter type.
  /// [values] Parameter values.
  GetCostCategorySplitChargeRuleParameter({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': values,
    };
  }

  factory GetCostCategorySplitChargeRuleParameter.fromMap(Map<String, dynamic> map) {
    return GetCostCategorySplitChargeRuleParameter(
      type: map['type'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

