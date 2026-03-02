// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaNoteUpdatedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final pulumi.Input<String> unit;
  /// A date range value for the date filter, provided as an Integer.
  final pulumi.Input<int> value;

  /// Creates a new [AutomationRuleCriteriaNoteUpdatedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  AutomationRuleCriteriaNoteUpdatedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaNoteUpdatedAtDateRange.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaNoteUpdatedAtDateRange(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

