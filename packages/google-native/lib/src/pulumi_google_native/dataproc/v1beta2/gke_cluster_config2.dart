// ignore_for_file: unused_element, unnecessary_cast

import 'namespaced_gke_deployment_target2.dart';

/// The GKE config for this cluster.
class GkeClusterConfig2 {
  /// Optional. A target for the deployment.
  final NamespacedGkeDeploymentTarget2? namespacedGkeDeploymentTarget;

  GkeClusterConfig2({
    this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespacedGkeDeploymentTargetValue = namespacedGkeDeploymentTarget;
    if (namespacedGkeDeploymentTargetValue != null) {
      map['namespacedGkeDeploymentTarget'] =
          namespacedGkeDeploymentTargetValue.toMap();
    }
    return map;
  }

  factory GkeClusterConfig2.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfig2(
      namespacedGkeDeploymentTarget:
          map['namespacedGkeDeploymentTarget'] == null
              ? null
              : NamespacedGkeDeploymentTarget2.fromMap(
                  (map['namespacedGkeDeploymentTarget'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
