// ignore_for_file: unused_element, unnecessary_cast


/// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileKedaResponse {
  /// Whether to enable KEDA.
  final bool enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileKedaResponse].
  /// [enabled] Whether to enable KEDA.
  ManagedClusterWorkloadAutoScalerProfileKedaResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileKedaResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileKedaResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

