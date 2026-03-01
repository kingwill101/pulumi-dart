// ignore_for_file: unused_element, unnecessary_cast

class SloWindowsBasedSliMetricSumInRangeRange {
  /// max value for the range (inclusive). If not given,
  /// will be set to "infinity", defining an open range
  /// ">= range.min"
  final double? max;

  /// Min value for the range (inclusive). If not given,
  /// will be set to "-infinity", defining an open range
  /// "< range.max"
  final double? min;

  /// Creates a new [SloWindowsBasedSliMetricSumInRangeRange].
  /// [max] max value for the range (inclusive). If not given,
  /// [min] Min value for the range (inclusive). If not given,
  SloWindowsBasedSliMetricSumInRangeRange({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SloWindowsBasedSliMetricSumInRangeRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return SloWindowsBasedSliMetricSumInRangeRange(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
