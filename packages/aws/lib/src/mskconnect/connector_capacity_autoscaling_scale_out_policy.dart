// ignore_for_file: unused_element, unnecessary_cast

class ConnectorCapacityAutoscalingScaleOutPolicy {
  /// The CPU utilization percentage threshold at which you want connector scale out to be triggered.
  final int? cpuUtilizationPercentage;

  /// Creates a new [ConnectorCapacityAutoscalingScaleOutPolicy].
  /// [cpuUtilizationPercentage] The CPU utilization percentage threshold at which you want connector scale out to be triggered.
  ConnectorCapacityAutoscalingScaleOutPolicy({
    this.cpuUtilizationPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuUtilizationPercentageValue = cpuUtilizationPercentage;
    if (cpuUtilizationPercentageValue != null) {
      map['cpuUtilizationPercentage'] = cpuUtilizationPercentageValue;
    }
    return map;
  }

  factory ConnectorCapacityAutoscalingScaleOutPolicy.fromMap(
      Map<String, dynamic> map) {
    return ConnectorCapacityAutoscalingScaleOutPolicy(
      cpuUtilizationPercentage: map['cpuUtilizationPercentage'] == null
          ? null
          : map['cpuUtilizationPercentage'] as int,
    );
  }
}
