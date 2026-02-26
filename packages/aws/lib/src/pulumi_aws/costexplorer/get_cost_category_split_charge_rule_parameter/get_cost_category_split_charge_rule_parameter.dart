// ignore_for_file: unused_element, unnecessary_cast

class GetCostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final String type;

  /// Parameter values.
  final List<String> values;

  GetCostCategorySplitChargeRuleParameter({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['values'] = values;
    return map;
  }

  factory GetCostCategorySplitChargeRuleParameter.fromMap(
      Map<String, dynamic> map) {
    return GetCostCategorySplitChargeRuleParameter(
      type: map['type'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
