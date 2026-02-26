// ignore_for_file: unused_element, unnecessary_cast

class ConnectorCapacityAutoscalingScaleInPolicy {
  /// Specifies the CPU utilization percentage threshold at which you want connector scale in to be triggered.
  final int? cpuUtilizationPercentage;

  ConnectorCapacityAutoscalingScaleInPolicy({
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

  factory ConnectorCapacityAutoscalingScaleInPolicy.fromMap(
      Map<String, dynamic> map) {
    return ConnectorCapacityAutoscalingScaleInPolicy(
      cpuUtilizationPercentage: map['cpuUtilizationPercentage'] == null
          ? null
          : map['cpuUtilizationPercentage'] as int,
    );
  }
}
