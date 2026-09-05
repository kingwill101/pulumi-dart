// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceContainerLaunchedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final pulumi.Input<String> unit;
  /// A date range value for the date filter, provided as an Integer.
  final pulumi.Input<int> value;

  /// Creates a new [InsightFiltersResourceContainerLaunchedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  const InsightFiltersResourceContainerLaunchedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory InsightFiltersResourceContainerLaunchedAtDateRange.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceContainerLaunchedAtDateRange(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
