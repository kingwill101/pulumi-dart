// ignore_for_file: unused_element, unnecessary_cast


/// The forecasted cost which is being tracked for a budget.
class ForecastSpendResponse {
  /// The forecasted cost for the total time period which is being tracked by the budget. This value is only provided if the budget contains a forecast alert type.
  final double amount;
  /// The unit of measure for the budget amount.
  final String unit;

  /// Creates a new [ForecastSpendResponse].
  /// [amount] The forecasted cost for the total time period which is being tracked by the budget. This value is only provided if the budget contains a forecast alert type.
  /// [unit] The unit of measure for the budget amount.
  ForecastSpendResponse({
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
      amount: map['amount'] as double,
      unit: map['unit'] as String,
    );
  }
}

