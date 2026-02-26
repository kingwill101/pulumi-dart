// ignore_for_file: unused_element, unnecessary_cast

class BudgetFilterExpressionOrNotTags {
  /// (Optional) The cost category key to filter on.
  final String? key;

  /// (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final List<String>? matchOptions;

  /// (Optional) A list of cost category values to match. At least one value is required.
  final List<String>? values;

  BudgetFilterExpressionOrNotTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final matchOptionsValue = matchOptions;
    if (matchOptionsValue != null) {
      map['matchOptions'] = matchOptionsValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory BudgetFilterExpressionOrNotTags.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrNotTags(
      key: map['key'] == null ? null : map['key'] as String,
      matchOptions: map['matchOptions'] == null
          ? null
          : (map['matchOptions'] as List).cast<String>(),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
