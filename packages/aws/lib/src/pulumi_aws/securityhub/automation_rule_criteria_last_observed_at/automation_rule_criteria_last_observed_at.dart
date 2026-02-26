// ignore_for_file: unused_element, unnecessary_cast

import '../automation_rule_criteria_last_observed_at_date_range/automation_rule_criteria_last_observed_at_date_range.dart';

class AutomationRuleCriteriaLastObservedAt {
  /// A configuration block of the date range for the date filter. See<span pulumi-lang-nodejs=" dateRange " pulumi-lang-dotnet=" DateRange " pulumi-lang-go=" dateRange " pulumi-lang-python=" date_range " pulumi-lang-yaml=" dateRange " pulumi-lang-java=" dateRange "> date_range </span>below for more details.
  final AutomationRuleCriteriaLastObservedAtDateRange? dateRange;

  /// An end date for the date filter. Required with <span pulumi-lang-nodejs="`start`" pulumi-lang-dotnet="`Start`" pulumi-lang-go="`start`" pulumi-lang-python="`start`" pulumi-lang-yaml="`start`" pulumi-lang-java="`start`">`start`</span> if <span pulumi-lang-nodejs="`dateRange`" pulumi-lang-dotnet="`DateRange`" pulumi-lang-go="`dateRange`" pulumi-lang-python="`date_range`" pulumi-lang-yaml="`dateRange`" pulumi-lang-java="`dateRange`">`date_range`</span> is not specified.
  final String? end;

  /// A start date for the date filter. Required with <span pulumi-lang-nodejs="`end`" pulumi-lang-dotnet="`End`" pulumi-lang-go="`end`" pulumi-lang-python="`end`" pulumi-lang-yaml="`end`" pulumi-lang-java="`end`">`end`</span> if <span pulumi-lang-nodejs="`dateRange`" pulumi-lang-dotnet="`DateRange`" pulumi-lang-go="`dateRange`" pulumi-lang-python="`date_range`" pulumi-lang-yaml="`dateRange`" pulumi-lang-java="`dateRange`">`date_range`</span> is not specified.
  final String? start;

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
