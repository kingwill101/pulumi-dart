// ignore_for_file: unused_element, unnecessary_cast


class ScalingRuleAlarmDimension {
  /// The dimension key of the metric.
  final String? dimensionKey;
  /// The dimension value of the metric.
  final String? dimensionValue;

  /// Creates a new [ScalingRuleAlarmDimension].
  /// [dimensionKey] The dimension key of the metric.
  /// [dimensionValue] The dimension value of the metric.
  ScalingRuleAlarmDimension({
    this.dimensionKey,
    this.dimensionValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': ?dimensionKey,
      'dimensionValue': ?dimensionValue,
    };
  }

  factory ScalingRuleAlarmDimension.fromMap(Map<String, dynamic> map) {
    return ScalingRuleAlarmDimension(
      dimensionKey: map['dimensionKey'] == null ? null : map['dimensionKey'] as String,
      dimensionValue: map['dimensionValue'] == null ? null : map['dimensionValue'] as String,
    );
  }
}

