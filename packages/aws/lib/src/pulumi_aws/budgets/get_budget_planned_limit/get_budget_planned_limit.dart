// ignore_for_file: unused_element, unnecessary_cast

class GetBudgetPlannedLimit {
  /// The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>.
  final String amount;

  /// (Required) The start time of the budget limit. Format: `2017-01-01_12:00`. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  final String startTime;

  /// The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>.
  final String unit;

  GetBudgetPlannedLimit({
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

  factory GetBudgetPlannedLimit.fromMap(Map<String, dynamic> map) {
    return GetBudgetPlannedLimit(
      amount: map['amount'] as String,
      startTime: map['startTime'] as String,
      unit: map['unit'] as String,
    );
  }
}
