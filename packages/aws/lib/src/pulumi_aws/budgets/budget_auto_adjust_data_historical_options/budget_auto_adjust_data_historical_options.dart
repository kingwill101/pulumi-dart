// ignore_for_file: unused_element, unnecessary_cast

class BudgetAutoAdjustDataHistoricalOptions {
  /// (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  final int budgetAdjustmentPeriod;

  /// (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the <span pulumi-lang-nodejs="`budgetAdjustmentPeriod`" pulumi-lang-dotnet="`BudgetAdjustmentPeriod`" pulumi-lang-go="`budgetAdjustmentPeriod`" pulumi-lang-python="`budget_adjustment_period`" pulumi-lang-yaml="`budgetAdjustmentPeriod`" pulumi-lang-java="`budgetAdjustmentPeriod`">`budget_adjustment_period`</span> and your historical cost data.
  final int? lookbackAvailablePeriods;

  BudgetAutoAdjustDataHistoricalOptions({
    required this.budgetAdjustmentPeriod,
    this.lookbackAvailablePeriods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['budgetAdjustmentPeriod'] = budgetAdjustmentPeriod;
    final lookbackAvailablePeriodsValue = lookbackAvailablePeriods;
    if (lookbackAvailablePeriodsValue != null) {
      map['lookbackAvailablePeriods'] = lookbackAvailablePeriodsValue;
    }
    return map;
  }

  factory BudgetAutoAdjustDataHistoricalOptions.fromMap(
      Map<String, dynamic> map) {
    return BudgetAutoAdjustDataHistoricalOptions(
      budgetAdjustmentPeriod: map['budgetAdjustmentPeriod'] as int,
      lookbackAvailablePeriods: map['lookbackAvailablePeriods'] == null
          ? null
          : map['lookbackAvailablePeriods'] as int,
    );
  }
}
