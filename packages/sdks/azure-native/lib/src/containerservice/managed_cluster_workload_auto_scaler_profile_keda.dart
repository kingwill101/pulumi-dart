// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileKeda {
  /// Whether to enable KEDA.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ManagedClusterWorkloadAutoScalerProfileKeda].
  /// [enabled] Whether to enable KEDA.
  const ManagedClusterWorkloadAutoScalerProfileKeda({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ManagedClusterWorkloadAutoScalerProfileKeda.fromMap(Map<String, dynamic> map) {
    return ManagedClusterWorkloadAutoScalerProfileKeda(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

