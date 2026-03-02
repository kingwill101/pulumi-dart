// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_process_terminated_at_date_range.dart';

class InsightFiltersProcessTerminatedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final pulumi.Input<InsightFiltersProcessTerminatedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [InsightFiltersProcessTerminatedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  InsightFiltersProcessTerminatedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<InsightFiltersProcessTerminatedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory InsightFiltersProcessTerminatedAt.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessTerminatedAt(
      dateRange: map['dateRange'] == null ? null : ((InsightFiltersProcessTerminatedAtDateRange.fromMap((map['dateRange']! as Map).cast<String, dynamic>())).input()).input(),
      end: map['end'] == null ? null : ((map['end'] as String).input()).input(),
      start: map['start'] == null ? null : ((map['start'] as String).input()).input(),
    );
  }
}

