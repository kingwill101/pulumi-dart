// ignore_for_file: unused_element, unnecessary_cast

import '../budget_budget_filter_custom_period_end_date/budget_budget_filter_custom_period_end_date.dart';
import '../budget_budget_filter_custom_period_start_date/budget_budget_filter_custom_period_start_date.dart';

class BudgetBudgetFilterCustomPeriod {
  /// Optional. The end date of the time period. Budgets with elapsed end date won't be processed.
  /// If unset, specifies to track all usage incurred since the startDate.
  /// Structure is documented below.
  final BudgetBudgetFilterCustomPeriodEndDate? endDate;

  /// A start date is required. The start date must be after January 1, 2017.
  /// Structure is documented below.
  final BudgetBudgetFilterCustomPeriodStartDate startDate;

  BudgetBudgetFilterCustomPeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue.toMap();
    }
    map['startDate'] = startDate.toMap();
    return map;
  }

  factory BudgetBudgetFilterCustomPeriod.fromMap(Map<String, dynamic> map) {
    return BudgetBudgetFilterCustomPeriod(
      endDate: map['endDate'] == null
          ? null
          : BudgetBudgetFilterCustomPeriodEndDate.fromMap(
              (map['endDate'] as Map).cast<String, dynamic>()),
      startDate: BudgetBudgetFilterCustomPeriodStartDate.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
    );
  }
}
