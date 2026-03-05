// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler {
  /// Whether to enable VPA. Default value is false.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler].
  /// [enabled] Whether to enable VPA. Default value is false.
  ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

