// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaLastObservedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final String unit;

  /// A date range value for the date filter, provided as an Integer.
  final int value;

  /// Creates a new [AutomationRuleCriteriaLastObservedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  AutomationRuleCriteriaLastObservedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory AutomationRuleCriteriaLastObservedAtDateRange.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleCriteriaLastObservedAtDateRange(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
