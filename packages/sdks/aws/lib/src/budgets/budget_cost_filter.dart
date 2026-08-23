// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetCostFilter {
  /// The name of a budget. Unique within accounts.
  final pulumi.Input<String> name;
  /// (Optional) A list of cost category values to match. At least one value is required.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetCostFilter].
  /// [name] The name of a budget. Unique within accounts.
  /// [values] (Optional) A list of cost category values to match. At least one value is required.
  const BudgetCostFilter({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
