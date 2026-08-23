// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_resource_aws_iam_access_key_created_at_date_range.dart';

class InsightFiltersResourceAwsIamAccessKeyCreatedAt {
  /// A configuration block of the date range for the date filter. See dateRange below for more details.
  final pulumi.Input<InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `dateRange` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `dateRange` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [InsightFiltersResourceAwsIamAccessKeyCreatedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See dateRange below for more details.
  /// [end] An end date for the date filter. Required with `start` if `dateRange` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `dateRange` is not specified.
  const InsightFiltersResourceAwsIamAccessKeyCreatedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory InsightFiltersResourceAwsIamAccessKeyCreatedAt.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsIamAccessKeyCreatedAt(
      dateRange: (() { final guardedValue = map['dateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightFiltersResourceAwsIamAccessKeyCreatedAtDateRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
