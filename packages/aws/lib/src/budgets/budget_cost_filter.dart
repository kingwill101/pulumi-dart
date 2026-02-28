// ignore_for_file: unused_element, unnecessary_cast


class BudgetCostFilter {
  /// The name of a budget. Unique within accounts.
  final String name;
  /// (Optional) A list of cost category values to match. At least one value is required.
  final List<String> values;

  /// Creates a new [BudgetCostFilter].
  /// [name] The name of a budget. Unique within accounts.
  /// [values] (Optional) A list of cost category values to match. At least one value is required.
  BudgetCostFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory BudgetCostFilter.fromMap(Map<String, dynamic> map) {
    return BudgetCostFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

