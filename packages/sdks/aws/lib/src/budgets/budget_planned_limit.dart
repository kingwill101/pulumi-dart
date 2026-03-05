// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetPlannedLimit {
  /// (Required) The amount of cost or usage being measured for a budget.
  final pulumi.Input<String> amount;
  /// (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final pulumi.Input<String> startTime;
  /// (Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  final pulumi.Input<String> unit;

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
    return <String, dynamic>{
      'amount': amount,
      'startTime': startTime,
      'unit': unit,
    };
  }

  factory BudgetPlannedLimit.fromMap(Map<String, dynamic> map) {
    return BudgetPlannedLimit(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}

