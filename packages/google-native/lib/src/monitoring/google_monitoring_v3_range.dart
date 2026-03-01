// ignore_for_file: unused_element, unnecessary_cast

/// Range of numerical values within min and max.
class GoogleMonitoringV3Range {
  /// Range maximum.
  final double? max;

  /// Range minimum.
  final double? min;

  /// Creates a new [GoogleMonitoringV3Range].
  /// [max] Range maximum.
  /// [min] Range minimum.
  GoogleMonitoringV3Range({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory GoogleMonitoringV3Range.fromMap(Map<String, dynamic> map) {
    return GoogleMonitoringV3Range(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
