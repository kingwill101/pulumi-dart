// ignore_for_file: unused_element, unnecessary_cast

class BudgetFilterExpressionNotDimensions {
  /// (Optional) The cost category key to filter on.
  final String key;

  /// (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final List<String>? matchOptions;

  /// (Optional) A list of cost category values to match. At least one value is required.
  final List<String> values;

  BudgetFilterExpressionNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final matchOptionsValue = matchOptions;
    if (matchOptionsValue != null) {
      map['matchOptions'] = matchOptionsValue;
    }
    map['values'] = values;
    return map;
  }

  factory BudgetFilterExpressionNotDimensions.fromMap(
      Map<String, dynamic> map) {
    return BudgetFilterExpressionNotDimensions(
      key: map['key'] as String,
      matchOptions: map['matchOptions'] == null
          ? null
          : (map['matchOptions'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}
