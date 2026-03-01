// ignore_for_file: unused_element, unnecessary_cast

class SloWindowsBasedSliMetricMeanInRangeRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// ">= range.min"
  final double? max;

  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "< range.max"
  final double? min;

  /// Creates a new [SloWindowsBasedSliMetricMeanInRangeRange].
  /// [max] max value for the range (inclusive). If not given,
  /// [min] Min value for the range (inclusive). If not given,
  SloWindowsBasedSliMetricMeanInRangeRange({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SloWindowsBasedSliMetricMeanInRangeRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return SloWindowsBasedSliMetricMeanInRangeRange(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
