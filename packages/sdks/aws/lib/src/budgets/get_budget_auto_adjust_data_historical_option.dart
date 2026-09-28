// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetAutoAdjustDataHistoricalOption {
  /// Number of budget periods included in the moving-average calculation that determines the auto-adjusted budget amount.
  final pulumi.Input<int> budgetAdjustmentPeriod;
  /// Number of budget periods in the `budgetAdjustmentPeriod` included in the calculation of the current budget limit.
  final pulumi.Input<int> lookbackAvailablePeriods;

  /// Creates a new [GetBudgetAutoAdjustDataHistoricalOption].
  /// [budgetAdjustmentPeriod] Number of budget periods included in the moving-average calculation that determines the auto-adjusted budget amount.
  /// [lookbackAvailablePeriods] Number of budget periods in the `budgetAdjustmentPeriod` included in the calculation of the current budget limit.
  const GetBudgetAutoAdjustDataHistoricalOption({
    required this.budgetAdjustmentPeriod,
    required this.lookbackAvailablePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetAdjustmentPeriod': budgetAdjustmentPeriod,
      'lookbackAvailablePeriods': lookbackAvailablePeriods,
    };
  }

  factory GetBudgetAutoAdjustDataHistoricalOption.fromMap(Map<String, dynamic> map) {
    return GetBudgetAutoAdjustDataHistoricalOption(
      budgetAdjustmentPeriod: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['budgetAdjustmentPeriod'])),
      lookbackAvailablePeriods: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['lookbackAvailablePeriods'])),
    );
  }
}
