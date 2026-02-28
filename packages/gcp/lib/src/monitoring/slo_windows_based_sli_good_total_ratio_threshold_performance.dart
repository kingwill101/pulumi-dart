// ignore_for_file: unused_element, unnecessary_cast

import 'slo_windows_based_sli_good_total_ratio_threshold_performance_distribution_cut.dart';
import 'slo_windows_based_sli_good_total_ratio_threshold_performance_good_total_ratio.dart';

class SloWindowsBasedSliGoodTotalRatioThresholdPerformance {
  /// Used when good_service is defined by a count of values aggregated in a
  /// Distribution that fall into a good range. The total_service is the
  /// total count of all values aggregated in the Distribution.
  /// Defines a distribution TimeSeries filter and thresholds used for
  /// measuring good service and total service.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut?
      distributionCut;

  /// A means to compute a ratio of `good_service` to `total_service`.
  /// Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
  /// Must specify exactly two of good, bad, and total service filters.
  /// The relationship good_service + bad_service = total_service
  /// will be assumed.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio?
      goodTotalRatio;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdPerformance].
  /// [distributionCut] Used when good_service is defined by a count of values aggregated in a
  /// [goodTotalRatio] A means to compute a ratio of `good_service` to `total_service`.
  SloWindowsBasedSliGoodTotalRatioThresholdPerformance({
    this.distributionCut,
    this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionCutValue = distributionCut;
    if (distributionCutValue != null) {
      map['distributionCut'] = distributionCutValue.toMap();
    }
    final goodTotalRatioValue = goodTotalRatio;
    if (goodTotalRatioValue != null) {
      map['goodTotalRatio'] = goodTotalRatioValue.toMap();
    }
    return map;
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformance.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformance(
      distributionCut: map['distributionCut'] == null
          ? null
          : SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCut
              .fromMap((map['distributionCut'] as Map).cast<String, dynamic>()),
      goodTotalRatio: map['goodTotalRatio'] == null
          ? null
          : SloWindowsBasedSliGoodTotalRatioThresholdPerformanceGoodTotalRatio
              .fromMap((map['goodTotalRatio'] as Map).cast<String, dynamic>()),
    );
  }
}
