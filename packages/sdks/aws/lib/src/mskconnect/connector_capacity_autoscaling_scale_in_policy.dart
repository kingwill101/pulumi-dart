// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorCapacityAutoscalingScaleInPolicy {
  /// Specifies the CPU utilization percentage threshold at which you want connector scale in to be triggered.
  final pulumi.Input<int>? cpuUtilizationPercentage;

  /// Creates a new [ConnectorCapacityAutoscalingScaleInPolicy].
  /// [cpuUtilizationPercentage] Specifies the CPU utilization percentage threshold at which you want connector scale in to be triggered.
  ConnectorCapacityAutoscalingScaleInPolicy({
    this.cpuUtilizationPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationPercentage': ?cpuUtilizationPercentage,
    };
  }

  factory ConnectorCapacityAutoscalingScaleInPolicy.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacityAutoscalingScaleInPolicy(
      cpuUtilizationPercentage: (() { final guardedValue = map['cpuUtilizationPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

