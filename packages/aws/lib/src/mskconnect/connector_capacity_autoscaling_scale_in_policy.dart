// ignore_for_file: unused_element, unnecessary_cast

class ConnectorCapacityAutoscalingScaleInPolicy {
  /// Specifies the CPU utilization percentage threshold at which you want connector scale in to be triggered.
  final int? cpuUtilizationPercentage;

  /// Creates a new [ConnectorCapacityAutoscalingScaleInPolicy].
  /// [cpuUtilizationPercentage] Specifies the CPU utilization percentage threshold at which you want connector scale in to be triggered.
  ConnectorCapacityAutoscalingScaleInPolicy({this.cpuUtilizationPercentage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationPercentage': ?cpuUtilizationPercentage,
    };
  }

  factory ConnectorCapacityAutoscalingScaleInPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorCapacityAutoscalingScaleInPolicy(
      cpuUtilizationPercentage: map['cpuUtilizationPercentage'] == null
          ? null
          : map['cpuUtilizationPercentage'] as int,
    );
  }
}
