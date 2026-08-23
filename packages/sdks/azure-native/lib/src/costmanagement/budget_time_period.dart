// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
///
/// Required for CategoryType(s): Cost, ReservationUtilization.
class BudgetTimePeriod {
  /// The end date for the budget.
  ///
  /// - Constraints for **CategoryType: Cost** - No constraints. If not provided, we default this to 10 years from the start date.
  ///
  /// - Constraints for **CategoryType: ReservationUtilization** - End date cannot be more than 3 years after the start date.
  final pulumi.Input<String>? endDate;
  /// The start date for the budget.
  ///
  /// - Constraints for **CategoryType: Cost** - Must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period.
  ///
  /// - Constraints for **CategoryType: ReservationUtilization** - Must be on or after the current date and less than the end date.
  final pulumi.Input<String> startDate;

  /// Creates a new [BudgetTimePeriod].
  /// [endDate] The end date for the budget.
  /// [startDate] The start date for the budget.
  const BudgetTimePeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': startDate,
    };
  }

  factory BudgetTimePeriod.fromMap(Map<String, dynamic> map) {
    return BudgetTimePeriod(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
    );
  }
}
