// ignore_for_file: unused_element, unnecessary_cast

class BudgetPlannedLimit {
  /// (Required) The amount of cost or usage being measured for a budget.
  final String amount;

  /// (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final String startTime;

  /// (Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  final String unit;

  /// Creates a new [BudgetPlannedLimit].
  /// [amount] (Required) The amount of cost or usage being measured for a budget.
  /// [startTime] (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  /// [unit] (Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  BudgetPlannedLimit({
    required this.amount,
    required this.startTime,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['startTime'] = startTime;
    map['unit'] = unit;
    return map;
  }

  factory BudgetPlannedLimit.fromMap(Map<String, dynamic> map) {
    return BudgetPlannedLimit(
      amount: map['amount'] as String,
      startTime: map['startTime'] as String,
      unit: map['unit'] as String,
    );
  }
}
