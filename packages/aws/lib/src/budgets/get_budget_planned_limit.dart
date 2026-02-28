// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetPlannedLimit {
  /// The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final String amount;
  /// (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final String startTime;
  /// The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final String unit;

  /// Creates a new [GetBudgetPlannedLimit].
  /// [amount] The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  /// [startTime] (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  /// [unit] The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  GetBudgetPlannedLimit({
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
      amount: map['amount'] as String,
      startTime: map['startTime'] as String,
      unit: map['unit'] as String,
    );
  }
}

