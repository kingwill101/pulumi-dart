// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_criteria_first_observed_at_date_range.dart';

class AutomationRuleCriteriaFirstObservedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final AutomationRuleCriteriaFirstObservedAtDateRange? dateRange;

  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final String? end;

  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final String? start;

  /// Creates a new [AutomationRuleCriteriaFirstObservedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  AutomationRuleCriteriaFirstObservedAt({this.dateRange, this.end, this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?dateRange == null ? null : dateRange!.toMap(),
      'end': ?end,
      'start': ?start,
    };
  }

  factory AutomationRuleCriteriaFirstObservedAt.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaFirstObservedAt(
      dateRange: map['dateRange'] == null
          ? null
          : AutomationRuleCriteriaFirstObservedAtDateRange.fromMap(
              (map['dateRange'] as Map).cast<String, dynamic>(),
            ),
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
