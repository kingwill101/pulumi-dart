// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The start and end date for a budget.
class BudgetTimePeriodResponse {
  /// The end date for the budget. If not provided, we default this to 10 years from the start date.
  final pulumi.Input<String>? endDate;
  /// The start date for the budget.
  final pulumi.Input<String> startDate;

  /// Creates a new [BudgetTimePeriodResponse].
  /// [endDate] The end date for the budget. If not provided, we default this to 10 years from the start date.
  /// [startDate] The start date for the budget.
  const BudgetTimePeriodResponse({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': startDate,
    };
  }

  factory BudgetTimePeriodResponse.fromMap(Map<String, dynamic> map) {
    return BudgetTimePeriodResponse(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
    );
  }
}

