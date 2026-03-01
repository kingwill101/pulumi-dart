// ignore_for_file: unused_element, unnecessary_cast

class GetBudgetBudgetLimit {
  /// The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final String amount;

  /// The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final String unit;

  /// Creates a new [GetBudgetBudgetLimit].
  /// [amount] The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  /// [unit] The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  GetBudgetBudgetLimit({required this.amount, required this.unit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'amount': amount, 'unit': unit};
  }

  factory GetBudgetBudgetLimit.fromMap(Map<String, dynamic> map) {
    return GetBudgetBudgetLimit(
      amount: map['amount'] as String,
      unit: map['unit'] as String,
    );
  }
}
