// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_threat_intel_indicator_last_observed_at_date_range.dart';

class InsightFiltersThreatIntelIndicatorLastObservedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final pulumi.Input<InsightFiltersThreatIntelIndicatorLastObservedAtDateRange>?
  dateRange;

  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final pulumi.Input<String>? end;

  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [InsightFiltersThreatIntelIndicatorLastObservedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  InsightFiltersThreatIntelIndicatorLastObservedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange':
          ?pulumi.Input.mapOptionalInputValue<
            InsightFiltersThreatIntelIndicatorLastObservedAtDateRange,
            Map<String, dynamic>
          >(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory InsightFiltersThreatIntelIndicatorLastObservedAt.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersThreatIntelIndicatorLastObservedAt(
      dateRange: (() {
        final guardedValue = map['dateRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InsightFiltersThreatIntelIndicatorLastObservedAtDateRange.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      end: (() {
        final guardedValue = map['end'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      start: (() {
        final guardedValue = map['start'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
