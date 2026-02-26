// ignore_for_file: unused_element, unnecessary_cast

import '../slo_windows_based_sli_good_total_ratio_threshold/slo_windows_based_sli_good_total_ratio_threshold.dart';
import '../slo_windows_based_sli_metric_mean_in_range/slo_windows_based_sli_metric_mean_in_range.dart';
import '../slo_windows_based_sli_metric_sum_in_range/slo_windows_based_sli_metric_sum_in_range.dart';

class SloWindowsBasedSli {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// with ValueType = BOOL. The window is good if any true values
  /// appear in the window. One of <span pulumi-lang-nodejs="`goodBadMetricFilter`" pulumi-lang-dotnet="`GoodBadMetricFilter`" pulumi-lang-go="`goodBadMetricFilter`" pulumi-lang-python="`good_bad_metric_filter`" pulumi-lang-yaml="`goodBadMetricFilter`" pulumi-lang-java="`goodBadMetricFilter`">`good_bad_metric_filter`</span>,
  /// <span pulumi-lang-nodejs="`goodTotalRatioThreshold`" pulumi-lang-dotnet="`GoodTotalRatioThreshold`" pulumi-lang-go="`goodTotalRatioThreshold`" pulumi-lang-python="`good_total_ratio_threshold`" pulumi-lang-yaml="`goodTotalRatioThreshold`" pulumi-lang-java="`goodTotalRatioThreshold`">`good_total_ratio_threshold`</span>, <span pulumi-lang-nodejs="`metricMeanInRange`" pulumi-lang-dotnet="`MetricMeanInRange`" pulumi-lang-go="`metricMeanInRange`" pulumi-lang-python="`metric_mean_in_range`" pulumi-lang-yaml="`metricMeanInRange`" pulumi-lang-java="`metricMeanInRange`">`metric_mean_in_range`</span>,
  /// <span pulumi-lang-nodejs="`metricSumInRange`" pulumi-lang-dotnet="`MetricSumInRange`" pulumi-lang-go="`metricSumInRange`" pulumi-lang-python="`metric_sum_in_range`" pulumi-lang-yaml="`metricSumInRange`" pulumi-lang-java="`metricSumInRange`">`metric_sum_in_range`</span> must be set for <span pulumi-lang-nodejs="`windowsBasedSli`" pulumi-lang-dotnet="`WindowsBasedSli`" pulumi-lang-go="`windowsBasedSli`" pulumi-lang-python="`windows_based_sli`" pulumi-lang-yaml="`windowsBasedSli`" pulumi-lang-java="`windowsBasedSli`">`windows_based_sli`</span>.
  final String? goodBadMetricFilter;

  /// Criterion that describes a window as good if its performance is
  /// high enough. One of <span pulumi-lang-nodejs="`goodBadMetricFilter`" pulumi-lang-dotnet="`GoodBadMetricFilter`" pulumi-lang-go="`goodBadMetricFilter`" pulumi-lang-python="`good_bad_metric_filter`" pulumi-lang-yaml="`goodBadMetricFilter`" pulumi-lang-java="`goodBadMetricFilter`">`good_bad_metric_filter`</span>,
  /// <span pulumi-lang-nodejs="`goodTotalRatioThreshold`" pulumi-lang-dotnet="`GoodTotalRatioThreshold`" pulumi-lang-go="`goodTotalRatioThreshold`" pulumi-lang-python="`good_total_ratio_threshold`" pulumi-lang-yaml="`goodTotalRatioThreshold`" pulumi-lang-java="`goodTotalRatioThreshold`">`good_total_ratio_threshold`</span>, <span pulumi-lang-nodejs="`metricMeanInRange`" pulumi-lang-dotnet="`MetricMeanInRange`" pulumi-lang-go="`metricMeanInRange`" pulumi-lang-python="`metric_mean_in_range`" pulumi-lang-yaml="`metricMeanInRange`" pulumi-lang-java="`metricMeanInRange`">`metric_mean_in_range`</span>,
  /// <span pulumi-lang-nodejs="`metricSumInRange`" pulumi-lang-dotnet="`MetricSumInRange`" pulumi-lang-go="`metricSumInRange`" pulumi-lang-python="`metric_sum_in_range`" pulumi-lang-yaml="`metricSumInRange`" pulumi-lang-java="`metricSumInRange`">`metric_sum_in_range`</span> must be set for <span pulumi-lang-nodejs="`windowsBasedSli`" pulumi-lang-dotnet="`WindowsBasedSli`" pulumi-lang-go="`windowsBasedSli`" pulumi-lang-python="`windows_based_sli`" pulumi-lang-yaml="`windowsBasedSli`" pulumi-lang-java="`windowsBasedSli`">`windows_based_sli`</span>.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThreshold? goodTotalRatioThreshold;

  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *averaged* across returned streams.
  /// One of <span pulumi-lang-nodejs="`goodBadMetricFilter`" pulumi-lang-dotnet="`GoodBadMetricFilter`" pulumi-lang-go="`goodBadMetricFilter`" pulumi-lang-python="`good_bad_metric_filter`" pulumi-lang-yaml="`goodBadMetricFilter`" pulumi-lang-java="`goodBadMetricFilter`">`good_bad_metric_filter`</span>,
  /// <span pulumi-lang-nodejs="`goodTotalRatioThreshold`" pulumi-lang-dotnet="`GoodTotalRatioThreshold`" pulumi-lang-go="`goodTotalRatioThreshold`" pulumi-lang-python="`good_total_ratio_threshold`" pulumi-lang-yaml="`goodTotalRatioThreshold`" pulumi-lang-java="`goodTotalRatioThreshold`">`good_total_ratio_threshold`</span>, <span pulumi-lang-nodejs="`metricMeanInRange`" pulumi-lang-dotnet="`MetricMeanInRange`" pulumi-lang-go="`metricMeanInRange`" pulumi-lang-python="`metric_mean_in_range`" pulumi-lang-yaml="`metricMeanInRange`" pulumi-lang-java="`metricMeanInRange`">`metric_mean_in_range`</span>,
  /// <span pulumi-lang-nodejs="`metricSumInRange`" pulumi-lang-dotnet="`MetricSumInRange`" pulumi-lang-go="`metricSumInRange`" pulumi-lang-python="`metric_sum_in_range`" pulumi-lang-yaml="`metricSumInRange`" pulumi-lang-java="`metricSumInRange`">`metric_sum_in_range`</span> must be set for <span pulumi-lang-nodejs="`windowsBasedSli`" pulumi-lang-dotnet="`WindowsBasedSli`" pulumi-lang-go="`windowsBasedSli`" pulumi-lang-python="`windows_based_sli`" pulumi-lang-yaml="`windowsBasedSli`" pulumi-lang-java="`windowsBasedSli`">`windows_based_sli`</span>.
  /// Average value X of <span pulumi-lang-nodejs="`timeSeries`" pulumi-lang-dotnet="`TimeSeries`" pulumi-lang-go="`timeSeries`" pulumi-lang-python="`time_series`" pulumi-lang-yaml="`timeSeries`" pulumi-lang-java="`timeSeries`">`time_series`</span> should satisfy
  /// `range.min <= X <= range.max` for a good window.
  /// Structure is documented below.
  final SloWindowsBasedSliMetricMeanInRange? metricMeanInRange;

  /// Criterion that describes a window as good if the metric's value
  /// is in a good range, *summed* across returned streams.
  /// Summed value `X` of <span pulumi-lang-nodejs="`timeSeries`" pulumi-lang-dotnet="`TimeSeries`" pulumi-lang-go="`timeSeries`" pulumi-lang-python="`time_series`" pulumi-lang-yaml="`timeSeries`" pulumi-lang-java="`timeSeries`">`time_series`</span> should satisfy
  /// `range.min <= X <= range.max` for a good window.
  /// One of <span pulumi-lang-nodejs="`goodBadMetricFilter`" pulumi-lang-dotnet="`GoodBadMetricFilter`" pulumi-lang-go="`goodBadMetricFilter`" pulumi-lang-python="`good_bad_metric_filter`" pulumi-lang-yaml="`goodBadMetricFilter`" pulumi-lang-java="`goodBadMetricFilter`">`good_bad_metric_filter`</span>,
  /// <span pulumi-lang-nodejs="`goodTotalRatioThreshold`" pulumi-lang-dotnet="`GoodTotalRatioThreshold`" pulumi-lang-go="`goodTotalRatioThreshold`" pulumi-lang-python="`good_total_ratio_threshold`" pulumi-lang-yaml="`goodTotalRatioThreshold`" pulumi-lang-java="`goodTotalRatioThreshold`">`good_total_ratio_threshold`</span>, <span pulumi-lang-nodejs="`metricMeanInRange`" pulumi-lang-dotnet="`MetricMeanInRange`" pulumi-lang-go="`metricMeanInRange`" pulumi-lang-python="`metric_mean_in_range`" pulumi-lang-yaml="`metricMeanInRange`" pulumi-lang-java="`metricMeanInRange`">`metric_mean_in_range`</span>,
  /// <span pulumi-lang-nodejs="`metricSumInRange`" pulumi-lang-dotnet="`MetricSumInRange`" pulumi-lang-go="`metricSumInRange`" pulumi-lang-python="`metric_sum_in_range`" pulumi-lang-yaml="`metricSumInRange`" pulumi-lang-java="`metricSumInRange`">`metric_sum_in_range`</span> must be set for <span pulumi-lang-nodejs="`windowsBasedSli`" pulumi-lang-dotnet="`WindowsBasedSli`" pulumi-lang-go="`windowsBasedSli`" pulumi-lang-python="`windows_based_sli`" pulumi-lang-yaml="`windowsBasedSli`" pulumi-lang-java="`windowsBasedSli`">`windows_based_sli`</span>.
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
