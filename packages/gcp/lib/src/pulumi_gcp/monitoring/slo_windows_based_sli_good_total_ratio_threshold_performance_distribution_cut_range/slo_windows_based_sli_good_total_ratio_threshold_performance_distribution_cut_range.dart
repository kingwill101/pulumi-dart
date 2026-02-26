// ignore_for_file: unused_element, unnecessary_cast

class SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// ">= range.min"
  final double? max;

  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "< range.max"
  final double? min;

  SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRange(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
