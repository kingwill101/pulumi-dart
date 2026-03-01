// ignore_for_file: unused_element, unnecessary_cast


/// VPA (Vertical Pod Autoscaler) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse {
  /// Whether to enable VPA. Default value is false.
  final bool enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse].
  /// [enabled] Whether to enable VPA. Default value is false.
  ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscalerResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

