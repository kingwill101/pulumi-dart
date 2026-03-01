// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetSubscriptionFilterDimension {
  /// The name of this Consumption Budget.
  final String name;
  /// The operator to used for comparison.
  final String operator;
  /// A list of values for the tag.
  final List<String> values;

  /// Creates a new [GetBudgetSubscriptionFilterDimension].
  /// [name] The name of this Consumption Budget.
  /// [operator] The operator to used for comparison.
  /// [values] A list of values for the tag.
  GetBudgetSubscriptionFilterDimension({
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

  factory GetBudgetSubscriptionFilterDimension.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionFilterDimension(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

