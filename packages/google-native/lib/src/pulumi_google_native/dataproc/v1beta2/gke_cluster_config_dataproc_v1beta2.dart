// ignore_for_file: unused_element, unnecessary_cast

import 'namespaced_gke_deployment_target_dataproc_v1beta2.dart';

/// The GKE config for this cluster.
class GkeClusterConfigDataprocV1beta2 {
  /// Optional. A target for the deployment.
  final NamespacedGkeDeploymentTargetDataprocV1beta2?
      namespacedGkeDeploymentTarget;

  GkeClusterConfigDataprocV1beta2({
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

  factory GkeClusterConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigDataprocV1beta2(
      namespacedGkeDeploymentTarget:
          map['namespacedGkeDeploymentTarget'] == null
              ? null
              : NamespacedGkeDeploymentTargetDataprocV1beta2.fromMap(
                  (map['namespacedGkeDeploymentTarget'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
