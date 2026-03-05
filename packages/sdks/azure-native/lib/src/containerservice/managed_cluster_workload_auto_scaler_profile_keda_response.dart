// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KEDA (Kubernetes Event-driven Autoscaling) settings for the workload auto-scaler profile.
class ManagedClusterWorkloadAutoScalerProfileKedaResponse {
  /// Whether to enable KEDA.
  final pulumi.Input<bool> enabled;

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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

