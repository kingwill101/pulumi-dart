// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetCostFilter {
  /// The name of a budget. Unique within accounts.
  ///
  /// The following arguments are optional:
  final String name;
  final List<String> values;

  /// Creates a new [GetBudgetCostFilter].
  /// [name] The name of a budget. Unique within accounts.
  /// [values] Required.
  GetBudgetCostFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetBudgetCostFilter.fromMap(Map<String, dynamic> map) {
    return GetBudgetCostFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

