// ignore_for_file: unused_element, unnecessary_cast

import 'slo_windows_based_sli_metric_sum_in_range_range.dart';

class SloWindowsBasedSliMetricSumInRange {
  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min <= x <= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max. Summed value `X` should satisfy
  /// `range.min <= X <= range.max` for a good window.
  /// Structure is documented below.
  final SloWindowsBasedSliMetricSumInRangeRange range;
  /// A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying the TimeSeries to use for evaluating window
  /// quality. The provided TimeSeries must have
  /// ValueType = INT64 or ValueType = DOUBLE and
  /// MetricKind = GAUGE.
  /// Summed value `X` should satisfy
  /// `range.min <= X <= range.max` for a good window.
  final String timeSeries;

  /// Creates a new [SloWindowsBasedSliMetricSumInRange].
  /// [range] Range of numerical values. The computed good_service
  /// [timeSeries] A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  SloWindowsBasedSliMetricSumInRange({
    required this.range,
    required this.timeSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range.toMap(),
      'timeSeries': timeSeries,
    };
  }

  factory SloWindowsBasedSliMetricSumInRange.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliMetricSumInRange(
      range: SloWindowsBasedSliMetricSumInRangeRange.fromMap((map['range'] as Map).cast<String, dynamic>()),
      timeSeries: map['timeSeries'] as String,
    );
  }
}

