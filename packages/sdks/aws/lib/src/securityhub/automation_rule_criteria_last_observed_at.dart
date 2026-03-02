// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_criteria_last_observed_at_date_range.dart';

class AutomationRuleCriteriaLastObservedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final pulumi.Input<AutomationRuleCriteriaLastObservedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final pulumi.Input<String>? start;

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
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<AutomationRuleCriteriaLastObservedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory AutomationRuleCriteriaLastObservedAt.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaLastObservedAt(
      dateRange: map['dateRange'] == null ? null : ((AutomationRuleCriteriaLastObservedAtDateRange.fromMap((map['dateRange']! as Map).cast<String, dynamic>())).input()).input(),
      end: map['end'] == null ? null : ((map['end'] as String).input()).input(),
      start: map['start'] == null ? null : ((map['start'] as String).input()).input(),
    );
  }
}

