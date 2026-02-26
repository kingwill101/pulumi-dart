// ignore_for_file: unused_element, unnecessary_cast

import '../slo_windows_based_sli_good_total_ratio_threshold_basic_sli_performance/slo_windows_based_sli_good_total_ratio_threshold_basic_sli_performance.dart';
import '../slo_windows_based_sli_good_total_ratio_threshold_performance/slo_windows_based_sli_good_total_ratio_threshold_performance.dart';

class SloWindowsBasedSliGoodTotalRatioThreshold {
  /// Basic SLI to evaluate to judge window quality.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance?
      basicSliPerformance;

  /// Request-based SLI to evaluate to judge window quality.
  /// Structure is documented below.
  final SloWindowsBasedSliGoodTotalRatioThresholdPerformance? performance;

  /// If window performance >= threshold, the window is counted
  /// as good.
  final double? threshold;

  SloWindowsBasedSliGoodTotalRatioThreshold({
    this.basicSliPerformance,
    this.performance,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicSliPerformanceValue = basicSliPerformance;
    if (basicSliPerformanceValue != null) {
      map['basicSliPerformance'] = basicSliPerformanceValue.toMap();
    }
    final performanceValue = performance;
    if (performanceValue != null) {
      map['performance'] = performanceValue.toMap();
    }
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    return map;
  }

  factory SloWindowsBasedSliGoodTotalRatioThreshold.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThreshold(
      basicSliPerformance: map['basicSliPerformance'] == null
          ? null
          : SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformance
              .fromMap(
                  (map['basicSliPerformance'] as Map).cast<String, dynamic>()),
      performance: map['performance'] == null
          ? null
          : SloWindowsBasedSliGoodTotalRatioThresholdPerformance.fromMap(
              (map['performance'] as Map).cast<String, dynamic>()),
      threshold: map['threshold'] == null ? null : map['threshold'] as double,
    );
  }
}
