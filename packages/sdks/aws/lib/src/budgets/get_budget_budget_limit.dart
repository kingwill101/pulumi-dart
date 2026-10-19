// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetBudgetLimit {
  /// Amount of cost or usage measured for the budget.
  final pulumi.Input<String> amount;
  /// Unit of measurement used for the budget, such as dollars or GB.
  final pulumi.Input<String> unit;

  /// Creates a new [GetBudgetBudgetLimit].
  /// [amount] Amount of cost or usage measured for the budget.
  /// [unit] Unit of measurement used for the budget, such as dollars or GB.
  const GetBudgetBudgetLimit({
    required this.amount,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'unit': unit,
    };
  }

  factory GetBudgetBudgetLimit.fromMap(Map<String, dynamic> map) {
    return GetBudgetBudgetLimit(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
