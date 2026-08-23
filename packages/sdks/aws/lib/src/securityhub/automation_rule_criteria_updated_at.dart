// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_criteria_updated_at_date_range.dart';

class AutomationRuleCriteriaUpdatedAt {
  /// A configuration block of the date range for the date filter. See dateRange below for more details.
  final pulumi.Input<AutomationRuleCriteriaUpdatedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `dateRange` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `dateRange` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [AutomationRuleCriteriaUpdatedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See dateRange below for more details.
  /// [end] An end date for the date filter. Required with `start` if `dateRange` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `dateRange` is not specified.
  const AutomationRuleCriteriaUpdatedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<AutomationRuleCriteriaUpdatedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory AutomationRuleCriteriaUpdatedAt.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaUpdatedAt(
      dateRange: (() { final guardedValue = map['dateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleCriteriaUpdatedAtDateRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
