// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetAutoAdjustDataHistoricalOption {
  /// (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  final pulumi.Input<int> budgetAdjustmentPeriod;

  /// (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the `budget_adjustment_period` and your historical cost data.
  final pulumi.Input<int> lookbackAvailablePeriods;

  /// Creates a new [GetBudgetAutoAdjustDataHistoricalOption].
  /// [budgetAdjustmentPeriod] (Required) - The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount.
  /// [lookbackAvailablePeriods] (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the `budget_adjustment_period` and your historical cost data.
  GetBudgetAutoAdjustDataHistoricalOption({
    required this.budgetAdjustmentPeriod,
    required this.lookbackAvailablePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetAdjustmentPeriod': budgetAdjustmentPeriod,
      'lookbackAvailablePeriods': lookbackAvailablePeriods,
    };
  }

  factory GetBudgetAutoAdjustDataHistoricalOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBudgetAutoAdjustDataHistoricalOption(
      budgetAdjustmentPeriod: pulumi.Input.fromValue(
        map['budgetAdjustmentPeriod'] as int,
      ),
      lookbackAvailablePeriods: pulumi.Input.fromValue(
        map['lookbackAvailablePeriods'] as int,
      ),
    );
  }
}
