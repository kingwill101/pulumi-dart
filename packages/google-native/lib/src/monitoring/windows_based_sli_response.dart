// ignore_for_file: unused_element, unnecessary_cast

import 'metric_range_response.dart';
import 'performance_threshold_response.dart';

/// A WindowsBasedSli defines good_service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window_criterion.
class WindowsBasedSliResponse {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
  final String goodBadMetricFilter;

  /// A window is good if its performance is high enough.
  final PerformanceThresholdResponse goodTotalRatioThreshold;

  /// A window is good if the metric's value is in a good range, averaged across returned streams.
  final MetricRangeResponse metricMeanInRange;

  /// A window is good if the metric's value is in a good range, summed across returned streams.
  final MetricRangeResponse metricSumInRange;

  /// Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
  final String windowPeriod;

  /// Creates a new [WindowsBasedSliResponse].
  /// [goodBadMetricFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
  /// [goodTotalRatioThreshold] A window is good if its performance is high enough.
  /// [metricMeanInRange] A window is good if the metric's value is in a good range, averaged across returned streams.
  /// [metricSumInRange] A window is good if the metric's value is in a good range, summed across returned streams.
  /// [windowPeriod] Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
  WindowsBasedSliResponse({
    required this.goodBadMetricFilter,
    required this.goodTotalRatioThreshold,
    required this.metricMeanInRange,
    required this.metricSumInRange,
    required this.windowPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goodBadMetricFilter': goodBadMetricFilter,
      'goodTotalRatioThreshold': goodTotalRatioThreshold.toMap(),
      'metricMeanInRange': metricMeanInRange.toMap(),
      'metricSumInRange': metricSumInRange.toMap(),
      'windowPeriod': windowPeriod,
    };
  }

  factory WindowsBasedSliResponse.fromMap(Map<String, dynamic> map) {
    return WindowsBasedSliResponse(
      goodBadMetricFilter: map['goodBadMetricFilter'] as String,
      goodTotalRatioThreshold: PerformanceThresholdResponse.fromMap(
        (map['goodTotalRatioThreshold'] as Map).cast<String, dynamic>(),
      ),
      metricMeanInRange: MetricRangeResponse.fromMap(
        (map['metricMeanInRange'] as Map).cast<String, dynamic>(),
      ),
      metricSumInRange: MetricRangeResponse.fromMap(
        (map['metricSumInRange'] as Map).cast<String, dynamic>(),
      ),
      windowPeriod: map['windowPeriod'] as String,
    );
  }
}
