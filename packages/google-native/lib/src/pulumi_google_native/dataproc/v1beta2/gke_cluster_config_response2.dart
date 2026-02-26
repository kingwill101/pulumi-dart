// ignore_for_file: unused_element, unnecessary_cast

import 'namespaced_gke_deployment_target_response2.dart';

/// The GKE config for this cluster.
class GkeClusterConfigResponse2 {
  /// Optional. A target for the deployment.
  final NamespacedGkeDeploymentTargetResponse2 namespacedGkeDeploymentTarget;

  GkeClusterConfigResponse2({
    required this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespacedGkeDeploymentTarget'] =
        namespacedGkeDeploymentTarget.toMap();
    return map;
  }

  factory GkeClusterConfigResponse2.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigResponse2(
      namespacedGkeDeploymentTarget:
          NamespacedGkeDeploymentTargetResponse2.fromMap(
              (map['namespacedGkeDeploymentTarget'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
