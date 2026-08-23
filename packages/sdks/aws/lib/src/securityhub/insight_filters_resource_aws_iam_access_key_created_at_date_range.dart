// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange {
  /// A date range unit for the date filter. Valid values: `DAYS`.
  final pulumi.Input<String> unit;
  /// A date range value for the date filter, provided as an Integer.
  final pulumi.Input<int> value;

  /// Creates a new [InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange].
  /// [unit] A date range unit for the date filter. Valid values: `DAYS`.
  /// [value] A date range value for the date filter, provided as an Integer.
  const InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
