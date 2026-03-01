// ignore_for_file: unused_element, unnecessary_cast

class CostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final String? type;

  /// Parameter values.
  final List<String>? values;

  /// Creates a new [CostCategorySplitChargeRuleParameter].
  /// [type] Parameter type.
  /// [values] Parameter values.
  CostCategorySplitChargeRuleParameter({this.type, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type, 'values': ?values};
  }

  factory CostCategorySplitChargeRuleParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return CostCategorySplitChargeRuleParameter(
      type: map['type'] == null ? null : map['type'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
