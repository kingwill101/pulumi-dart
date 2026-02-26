// ignore_for_file: unused_element, unnecessary_cast

import 'metric_range.dart';
import 'performance_threshold.dart';

/// A WindowsBasedSli defines good_service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window_criterion.
class WindowsBasedSli {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.
  final String? goodBadMetricFilter;

  /// A window is good if its performance is high enough.
  final PerformanceThreshold? goodTotalRatioThreshold;

  /// A window is good if the metric's value is in a good range, averaged across returned streams.
  final MetricRange? metricMeanInRange;

  /// A window is good if the metric's value is in a good range, summed across returned streams.
  final MetricRange? metricSumInRange;

  /// Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.
  final String? windowPeriod;

  WindowsBasedSli({
    this.goodBadMetricFilter,
    this.goodTotalRatioThreshold,
    this.metricMeanInRange,
    this.metricSumInRange,
    this.windowPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final goodBadMetricFilterValue = goodBadMetricFilter;
    if (goodBadMetricFilterValue != null) {
      map['goodBadMetricFilter'] = goodBadMetricFilterValue;
    }
    final goodTotalRatioThresholdValue = goodTotalRatioThreshold;
    if (goodTotalRatioThresholdValue != null) {
      map['goodTotalRatioThreshold'] = goodTotalRatioThresholdValue.toMap();
    }
    final metricMeanInRangeValue = metricMeanInRange;
    if (metricMeanInRangeValue != null) {
      map['metricMeanInRange'] = metricMeanInRangeValue.toMap();
    }
    final metricSumInRangeValue = metricSumInRange;
    if (metricSumInRangeValue != null) {
      map['metricSumInRange'] = metricSumInRangeValue.toMap();
    }
    final windowPeriodValue = windowPeriod;
    if (windowPeriodValue != null) {
      map['windowPeriod'] = windowPeriodValue;
    }
    return map;
  }

  factory WindowsBasedSli.fromMap(Map<String, dynamic> map) {
    return WindowsBasedSli(
      goodBadMetricFilter: map['goodBadMetricFilter'] == null
          ? null
          : map['goodBadMetricFilter'] as String,
      goodTotalRatioThreshold: map['goodTotalRatioThreshold'] == null
          ? null
          : PerformanceThreshold.fromMap(
              (map['goodTotalRatioThreshold'] as Map).cast<String, dynamic>()),
      metricMeanInRange: map['metricMeanInRange'] == null
          ? null
          : MetricRange.fromMap(
              (map['metricMeanInRange'] as Map).cast<String, dynamic>()),
      metricSumInRange: map['metricSumInRange'] == null
          ? null
          : MetricRange.fromMap(
              (map['metricSumInRange'] as Map).cast<String, dynamic>()),
      windowPeriod:
          map['windowPeriod'] == null ? null : map['windowPeriod'] as String,
    );
  }
}
