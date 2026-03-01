// ignore_for_file: unused_element, unnecessary_cast


class BudgetFilterExpressionOrNotDimensions {
  /// (Optional) The cost category key to filter on.
  final String key;
  /// (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final List<String>? matchOptions;
  /// (Optional) A list of cost category values to match. At least one value is required.
  final List<String> values;

  /// Creates a new [BudgetFilterExpressionOrNotDimensions].
  /// [key] (Optional) The cost category key to filter on.
  /// [matchOptions] (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  /// [values] (Optional) A list of cost category values to match. At least one value is required.
  BudgetFilterExpressionOrNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'matchOptions': ?matchOptions,
      'values': values,
    };
  }

  factory BudgetFilterExpressionOrNotDimensions.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrNotDimensions(
      key: map['key'] as String,
      matchOptions: map['matchOptions'] == null ? null : (map['matchOptions'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

