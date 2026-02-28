// ignore_for_file: unused_element, unnecessary_cast

class ScalingPlanScalingInstructionCustomizedLoadMetricSpecification {
  /// Dimensions of the metric.
  final Map<String, String>? dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  /// Statistic of the metric. Currently, the value must always be `Sum`.
  final String statistic;

  /// Unit of the metric.
  final String? unit;

  /// Creates a new [ScalingPlanScalingInstructionCustomizedLoadMetricSpecification].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  /// [statistic] Statistic of the metric. Currently, the value must always be `Sum`.
  /// [unit] Unit of the metric.
  ScalingPlanScalingInstructionCustomizedLoadMetricSpecification({
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

  factory ScalingPlanScalingInstructionCustomizedLoadMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionCustomizedLoadMetricSpecification(
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
