// ignore_for_file: unused_element, unnecessary_cast

class ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification {
  /// Dimensions of the metric.
  final Map<String, String>? dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  /// Statistic of the metric. Valid values: `Average`, `Maximum`, `Minimum`, `SampleCount`, `Sum`.
  final String statistic;

  /// Unit of the metric.
  final String? unit;

  ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    map['statistic'] = statistic;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification(
      dimensions: map['dimensions'] == null
          ? null
          : (map['dimensions'] as Map).cast<String, String>(),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      statistic: map['statistic'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}
