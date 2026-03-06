// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse {
  /// Whether to enable VPA. Default value is false.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse].
  /// [enabled] Whether to enable VPA. Default value is false.
  const ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

