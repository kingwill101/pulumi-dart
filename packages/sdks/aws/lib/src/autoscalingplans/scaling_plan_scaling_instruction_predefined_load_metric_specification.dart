// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanScalingInstructionPredefinedLoadMetricSpecification {
  /// Metric type. Valid values: `ALBTargetGroupRequestCount`, `ASGTotalCPUUtilization`, `ASGTotalNetworkIn`, `ASGTotalNetworkOut`.
  final pulumi.Input<String> predefinedLoadMetricType;
  /// Identifies the resource associated with the metric type.
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [ScalingPlanScalingInstructionPredefinedLoadMetricSpecification].
  /// [predefinedLoadMetricType] Metric type. Valid values: `ALBTargetGroupRequestCount`, `ASGTotalCPUUtilization`, `ASGTotalNetworkIn`, `ASGTotalNetworkOut`.
  /// [resourceLabel] Identifies the resource associated with the metric type.
  ScalingPlanScalingInstructionPredefinedLoadMetricSpecification({
    required this.predefinedLoadMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedLoadMetricType': predefinedLoadMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory ScalingPlanScalingInstructionPredefinedLoadMetricSpecification.fromMap(Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionPredefinedLoadMetricSpecification(
      predefinedLoadMetricType: (map['predefinedLoadMetricType'] as String).input(),
      resourceLabel: map['resourceLabel'] == null ? null : (map['resourceLabel'] as String).input(),
    );
  }
}

