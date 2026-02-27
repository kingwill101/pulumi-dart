// ignore_for_file: unused_element, unnecessary_cast

import '../slo_windows_based_sli_good_total_ratio_threshold_performance_distribution_cut_range/slo_windows_based_sli_good_total_ratio_threshold_performance_distribution_cut_range.dart';

class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// aggregating values to quantify the good service provided.
  /// Must have ValueType = DISTRIBUTION and
  /// MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String distributionFilter;

  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min <= x <= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange
      range;

  SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributionFilter'] = distributionFilter;
    map['range'] = range.toMap();
    return map;
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut(
      distributionFilter: map['distributionFilter'] as String,
      range:
          SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange
              .fromMap((map['range'] as Map).cast<String, dynamic>()),
    );
  }
}
