// ignore_for_file: unused_element, unnecessary_cast

class CostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final String? type;

  /// Parameter values.
  final List<String>? values;

  CostCategorySplitChargeRuleParameter({
    this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory CostCategorySplitChargeRuleParameter.fromMap(
      Map<String, dynamic> map) {
    return CostCategorySplitChargeRuleParameter(
      type: map['type'] == null ? null : map['type'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
