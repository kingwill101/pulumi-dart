// ignore_for_file: unused_element, unnecessary_cast

class ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification {
  /// Metric type. Valid values: `ALBRequestCountPerTarget`, `ASGAverageCPUUtilization`, `ASGAverageNetworkIn`, `ASGAverageNetworkOut`, `DynamoDBReadCapacityUtilization`, `DynamoDBWriteCapacityUtilization`, `ECSServiceAverageCPUUtilization`, `ECSServiceAverageMemoryUtilization`, `EC2SpotFleetRequestAverageCPUUtilization`, `EC2SpotFleetRequestAverageNetworkIn`, `EC2SpotFleetRequestAverageNetworkOut`, `RDSReaderAverageCPUUtilization`, `RDSReaderAverageDatabaseConnections`.
  final String predefinedScalingMetricType;

  /// Identifies the resource associated with the metric type.
  final String? resourceLabel;

  ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification({
    required this.predefinedScalingMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedScalingMetricType'] = predefinedScalingMetricType;
    final resourceLabelValue = resourceLabel;
    if (resourceLabelValue != null) {
      map['resourceLabel'] = resourceLabelValue;
    }
    return map;
  }

  factory ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification(
      predefinedScalingMetricType: map['predefinedScalingMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
