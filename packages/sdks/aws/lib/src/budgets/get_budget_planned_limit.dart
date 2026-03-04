// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetPlannedLimit {
  /// The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final pulumi.Input<String> amount;

  /// (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final pulumi.Input<String> startTime;

  /// The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final pulumi.Input<String> unit;

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
      amount: pulumi.Input.fromValue(map['amount'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
