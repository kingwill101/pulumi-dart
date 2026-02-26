// ignore_for_file: unused_element, unnecessary_cast

class ScalingPlanScalingInstructionPredefinedLoadMetricSpecification {
  /// Metric type. Valid values: `ALBTargetGroupRequestCount`, `ASGTotalCPUUtilization`, `ASGTotalNetworkIn`, `ASGTotalNetworkOut`.
  final String predefinedLoadMetricType;

  /// Identifies the resource associated with the metric type.
  final String? resourceLabel;

  ScalingPlanScalingInstructionPredefinedLoadMetricSpecification({
    required this.predefinedLoadMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedLoadMetricType'] = predefinedLoadMetricType;
    final resourceLabelValue = resourceLabel;
    if (resourceLabelValue != null) {
      map['resourceLabel'] = resourceLabelValue;
    }
    return map;
  }

  factory ScalingPlanScalingInstructionPredefinedLoadMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionPredefinedLoadMetricSpecification(
      predefinedLoadMetricType: map['predefinedLoadMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
