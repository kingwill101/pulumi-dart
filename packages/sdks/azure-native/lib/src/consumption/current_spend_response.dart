// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current amount of cost which is being tracked for a budget.
class CurrentSpendResponse {
  /// The total amount of cost which is being tracked by the budget.
  final pulumi.Input<double> amount;
  /// The unit of measure for the budget amount.
  final pulumi.Input<String> unit;

  /// Creates a new [CurrentSpendResponse].
  /// [amount] The total amount of cost which is being tracked by the budget.
  /// [unit] The unit of measure for the budget amount.
  const CurrentSpendResponse({
    required this.amount,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'unit': unit,
    };
  }

  factory CurrentSpendResponse.fromMap(Map<String, dynamic> map) {
    return CurrentSpendResponse(
      amount: pulumi.Input.fromValue(map['amount'] as double),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}

