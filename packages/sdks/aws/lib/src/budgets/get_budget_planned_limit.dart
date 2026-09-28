// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetPlannedLimit {
  /// Amount of cost or usage measured for the budget.
  final pulumi.Input<String> amount;
  /// Start time of the budget limit. Format: `2017-01-01_12:00`.
  final pulumi.Input<String> startTime;
  /// Unit of measurement used for the budget, such as dollars or GB.
  final pulumi.Input<String> unit;

  /// Creates a new [GetBudgetPlannedLimit].
  /// [amount] Amount of cost or usage measured for the budget.
  /// [startTime] Start time of the budget limit. Format: `2017-01-01_12:00`.
  /// [unit] Unit of measurement used for the budget, such as dollars or GB.
  const GetBudgetPlannedLimit({
    required this.amount,
    required this.startTime,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'startTime': startTime,
      'unit': unit,
    };
  }

  factory GetBudgetPlannedLimit.fromMap(Map<String, dynamic> map) {
    return GetBudgetPlannedLimit(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
