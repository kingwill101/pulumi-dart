// ignore_for_file: unused_element, unnecessary_cast

class BudgetCostFilter {
  /// The name of a budget. Unique within accounts.
  final String name;

  /// (Optional) A list of cost category values to match. At least one value is required.
  final List<String> values;

  BudgetCostFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory BudgetCostFilter.fromMap(Map<String, dynamic> map) {
    return BudgetCostFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
