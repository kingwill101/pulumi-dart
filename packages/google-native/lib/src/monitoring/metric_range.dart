// ignore_for_file: unused_element, unnecessary_cast

import 'google_monitoring_v3_range.dart';

/// A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
class MetricRange {
  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final GoogleMonitoringV3Range? range;

  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  final String? timeSeries;

  /// Creates a new [MetricRange].
  /// [range] Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  /// [timeSeries] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  MetricRange({this.range, this.timeSeries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range == null ? null : range!.toMap(),
      'timeSeries': ?timeSeries,
    };
  }

  factory MetricRange.fromMap(Map<String, dynamic> map) {
    return MetricRange(
      range: map['range'] == null
          ? null
          : GoogleMonitoringV3Range.fromMap(
              (map['range'] as Map).cast<String, dynamic>(),
            ),
      timeSeries: map['timeSeries'] == null
          ? null
          : map['timeSeries'] as String,
    );
  }
}
