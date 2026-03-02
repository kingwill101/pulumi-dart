// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_criteria_created_at_date_range.dart';

class AutomationRuleCriteriaCreatedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final pulumi.Input<AutomationRuleCriteriaCreatedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [AutomationRuleCriteriaCreatedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  AutomationRuleCriteriaCreatedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<AutomationRuleCriteriaCreatedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory AutomationRuleCriteriaCreatedAt.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaCreatedAt(
      dateRange: map['dateRange'] == null ? null : ((AutomationRuleCriteriaCreatedAtDateRange.fromMap((map['dateRange']! as Map).cast<String, dynamic>())).input()).input(),
      end: map['end'] == null ? null : ((map['end'] as String).input()).input(),
      start: map['start'] == null ? null : ((map['start'] as String).input()).input(),
    );
  }
}

