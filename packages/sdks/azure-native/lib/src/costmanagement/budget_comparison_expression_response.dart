// ignore_for_file: unused_element, unnecessary_cast


/// The comparison expression to be used in the budgets.
class BudgetComparisonExpressionResponse {
  /// The name of the column to use in comparison.
  final String name;
  /// The operator to use for comparison.
  final String operator;
  /// Array of values to use for comparison
  final List<String> values;

  /// Creates a new [BudgetComparisonExpressionResponse].
  /// [name] The name of the column to use in comparison.
  /// [operator] The operator to use for comparison.
  /// [values] Array of values to use for comparison
  BudgetComparisonExpressionResponse({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory BudgetComparisonExpressionResponse.fromMap(Map<String, dynamic> map) {
    return BudgetComparisonExpressionResponse(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

