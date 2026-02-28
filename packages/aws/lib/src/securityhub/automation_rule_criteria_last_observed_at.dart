// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_criteria_last_observed_at_date_range.dart';

class AutomationRuleCriteriaLastObservedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final AutomationRuleCriteriaLastObservedAtDateRange? dateRange;

  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final String? end;

  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final String? start;

  /// Creates a new [AutomationRuleCriteriaLastObservedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  AutomationRuleCriteriaLastObservedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateRangeValue = dateRange;
    if (dateRangeValue != null) {
      map['dateRange'] = dateRangeValue.toMap();
    }
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue;
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue;
    }
    return map;
  }

  factory AutomationRuleCriteriaLastObservedAt.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaLastObservedAt(
      dateRange: map['dateRange'] == null
          ? null
          : AutomationRuleCriteriaLastObservedAtDateRange.fromMap(
              (map['dateRange'] as Map).cast<String, dynamic>()),
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
