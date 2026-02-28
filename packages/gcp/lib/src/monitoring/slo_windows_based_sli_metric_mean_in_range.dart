// ignore_for_file: unused_element, unnecessary_cast

import 'slo_windows_based_sli_metric_mean_in_range_range.dart';

class SloWindowsBasedSliMetricMeanInRange {
  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min <= x <= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max. Mean value `X` of `time_series`
  /// values should satisfy `range.min <= X <= range.max` for a
  /// good service.
  /// Structure is documented below.
  final SloWindowsBasedSliMetricMeanInRangeRange range;

  /// A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying the TimeSeries to use for evaluating window
  /// The provided TimeSeries must have ValueType = INT64 or
  /// ValueType = DOUBLE and MetricKind = GAUGE. Mean value `X`
  /// should satisfy `range.min <= X <= range.max`
  /// under good service.
  final String timeSeries;

  /// Creates a new [SloWindowsBasedSliMetricMeanInRange].
  /// [range] Range of numerical values. The computed good_service
  /// [timeSeries] A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  SloWindowsBasedSliMetricMeanInRange({
    required this.range,
    required this.timeSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range.toMap();
    map['timeSeries'] = timeSeries;
    return map;
  }

  factory SloWindowsBasedSliMetricMeanInRange.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliMetricMeanInRange(
      range: SloWindowsBasedSliMetricMeanInRangeRange.fromMap(
          (map['range'] as Map).cast<String, dynamic>()),
      timeSeries: map['timeSeries'] as String,
    );
  }
}
