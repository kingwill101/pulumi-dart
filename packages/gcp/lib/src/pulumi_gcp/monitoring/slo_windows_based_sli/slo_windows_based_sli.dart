// ignore_for_file: unused_element, unnecessary_cast

import '../slo_windows_based_sli_good_total_ratio_threshold/slo_windows_based_sli_good_total_ratio_threshold.dart';
import '../slo_windows_based_sli_metric_mean_in_range/slo_windows_based_sli_metric_mean_in_range.dart';
import '../slo_windows_based_sli_metric_sum_in_range/slo_windows_based_sli_metric_sum_in_range.dart';

class SloWindowsBasedSli {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// with ValueType = BOOL. The window is good if any true values
  /// appear in the window. One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  final String? goodBadMetricFilter;

  /// Criterion that describes a window as good if its performance is
  /// high enough. One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThreshold? goodTotalRatioThreshold;

  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *averaged* across returned streams.
  /// One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Average value X of `time_series` should satisfy
  /// `range.min <= X <= range.max` for a good window.
  /// Structure is documented below.
  final SloWindowsBasedSliMetricMeanInRange? metricMeanInRange;

  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *summed* across returned streams.
  /// Summed value `X` of `time_series` should satisfy
  /// `range.min <= X <= range.max` for a good window.
  /// One of `good_bad_metric_filter`,
  /// `good_total_ratio_threshold`, `metric_mean_in_range`,
  /// `metric_sum_in_range` must be set for `windows_based_sli`.
  /// Structure is documented below.
  final SloWindowsBasedSliMetricSumInRange? metricSumInRange;

  /// Duration over which window quality is evaluated, given as a
  /// duration string "{X}s" representing X seconds. Must be an
  /// integer fraction of a day and at least 60s.
  final String? windowPeriod;

  SloWindowsBasedSli({
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

  factory SloWindowsBasedSli.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSli(
      goodBadMetricFilter: map['goodBadMetricFilter'] == null
          ? null
          : map['goodBadMetricFilter'] as String,
      goodTotalRatioThreshold: map['goodTotalRatioThreshold'] == null
          ? null
          : SloWindowsBasedSliGoodTotalRatioThreshold.fromMap(
              (map['goodTotalRatioThreshold'] as Map).cast<String, dynamic>()),
      metricMeanInRange: map['metricMeanInRange'] == null
          ? null
          : SloWindowsBasedSliMetricMeanInRange.fromMap(
              (map['metricMeanInRange'] as Map).cast<String, dynamic>()),
      metricSumInRange: map['metricSumInRange'] == null
          ? null
          : SloWindowsBasedSliMetricSumInRange.fromMap(
              (map['metricSumInRange'] as Map).cast<String, dynamic>()),
      windowPeriod:
          map['windowPeriod'] == null ? null : map['windowPeriod'] as String,
    );
  }
}
