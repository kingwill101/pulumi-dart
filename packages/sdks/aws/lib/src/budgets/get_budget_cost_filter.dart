// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetCostFilter {
  /// Name of the budget. Unique within an account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Values of the cost filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetBudgetCostFilter].
  /// [name] Name of the budget. Unique within an account.
  /// [values] Values of the cost filter.
  const GetBudgetCostFilter({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
