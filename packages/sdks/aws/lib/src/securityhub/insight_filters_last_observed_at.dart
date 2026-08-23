// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_last_observed_at_date_range.dart';

class InsightFiltersLastObservedAt {
  /// A configuration block of the date range for the date filter. See dateRange below for more details.
  final pulumi.Input<InsightFiltersLastObservedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `dateRange` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `dateRange` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [InsightFiltersLastObservedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See dateRange below for more details.
  /// [end] An end date for the date filter. Required with `start` if `dateRange` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `dateRange` is not specified.
  const InsightFiltersLastObservedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<InsightFiltersLastObservedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory InsightFiltersLastObservedAt.fromMap(Map<String, dynamic> map) {
    return InsightFiltersLastObservedAt(
      dateRange: (() { final guardedValue = map['dateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightFiltersLastObservedAtDateRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
