// ignore_for_file: unused_element, unnecessary_cast


/// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileKeda {
  /// Whether to enable KEDA.
  final bool enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileKeda].
  /// [enabled] Whether to enable KEDA.
  ManagedClusterWorkloadAutoScalerProfileKeda({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileKeda.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileKeda(
      enabled: map['enabled'] as bool,
    );
  }
}

