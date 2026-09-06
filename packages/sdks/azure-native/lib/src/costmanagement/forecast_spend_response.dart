// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The forecasted cost which is being tracked for a budget.
///
/// Supported for CategoryType(s): Cost.
class ForecastSpendResponse {
  /// The forecasted cost for the total time period which is being tracked by the budget. This value is only provided if the budget contains a forecast alert type.
  final pulumi.Input<double> amount;
  /// The unit of measure for the budget amount.
  final pulumi.Input<String> unit;

  /// Creates a new [ForecastSpendResponse].
  /// [amount] The forecasted cost for the total time period which is being tracked by the budget. This value is only provided if the budget contains a forecast alert type.
  /// [unit] The unit of measure for the budget amount.
  const ForecastSpendResponse({
    required this.amount,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'unit': unit,
    };
  }

  factory ForecastSpendResponse.fromMap(Map<String, dynamic> map) {
    return ForecastSpendResponse(
      amount: pulumi.Input.fromValue((map['amount'] as num).toDouble()),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
