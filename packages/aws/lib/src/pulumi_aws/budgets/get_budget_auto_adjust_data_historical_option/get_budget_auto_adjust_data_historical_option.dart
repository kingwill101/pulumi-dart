// ignore_for_file: unused_element, unnecessary_cast

class GetBudgetAutoAdjustDataHistoricalOption {
  /// (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  final int budgetAdjustmentPeriod;

  /// (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the `budget_adjustment_period` and your historical cost data.
  final int lookbackAvailablePeriods;

  GetBudgetAutoAdjustDataHistoricalOption({
    required this.budgetAdjustmentPeriod,
    required this.lookbackAvailablePeriods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['budgetAdjustmentPeriod'] = budgetAdjustmentPeriod;
    map['lookbackAvailablePeriods'] = lookbackAvailablePeriods;
    return map;
  }

  factory GetBudgetAutoAdjustDataHistoricalOption.fromMap(
      Map<String, dynamic> map) {
    return GetBudgetAutoAdjustDataHistoricalOption(
      budgetAdjustmentPeriod: map['budgetAdjustmentPeriod'] as int,
      lookbackAvailablePeriods: map['lookbackAvailablePeriods'] as int,
    );
  }
}
