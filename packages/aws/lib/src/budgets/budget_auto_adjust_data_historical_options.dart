// ignore_for_file: unused_element, unnecessary_cast

class BudgetAutoAdjustDataHistoricalOptions {
  /// (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  final int budgetAdjustmentPeriod;

  /// (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the `budget_adjustment_period` and your historical cost data.
  final int? lookbackAvailablePeriods;

  /// Creates a new [BudgetAutoAdjustDataHistoricalOptions].
  /// [budgetAdjustmentPeriod] (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  /// [lookbackAvailablePeriods] (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the `budget_adjustment_period` and your historical cost data.
  BudgetAutoAdjustDataHistoricalOptions({
    required this.budgetAdjustmentPeriod,
    this.lookbackAvailablePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetAdjustmentPeriod': budgetAdjustmentPeriod,
      'lookbackAvailablePeriods': ?lookbackAvailablePeriods,
    };
  }

  factory BudgetAutoAdjustDataHistoricalOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return BudgetAutoAdjustDataHistoricalOptions(
      budgetAdjustmentPeriod: map['budgetAdjustmentPeriod'] as int,
      lookbackAvailablePeriods: map['lookbackAvailablePeriods'] == null
          ? null
          : map['lookbackAvailablePeriods'] as int,
    );
  }
}
