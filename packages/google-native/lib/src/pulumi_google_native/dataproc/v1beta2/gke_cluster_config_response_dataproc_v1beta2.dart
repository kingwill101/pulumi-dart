// ignore_for_file: unused_element, unnecessary_cast

import 'namespaced_gke_deployment_target_response_dataproc_v1beta2.dart';

/// The GKE config for this cluster.
class GkeClusterConfigResponseDataprocV1beta2 {
  /// Optional. A target for the deployment.
  final NamespacedGkeDeploymentTargetResponseDataprocV1beta2
      namespacedGkeDeploymentTarget;

  GkeClusterConfigResponseDataprocV1beta2({
    required this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespacedGkeDeploymentTarget'] =
        namespacedGkeDeploymentTarget.toMap();
    return map;
  }

  factory GkeClusterConfigResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return GkeClusterConfigResponseDataprocV1beta2(
      namespacedGkeDeploymentTarget:
          NamespacedGkeDeploymentTargetResponseDataprocV1beta2.fromMap(
              (map['namespacedGkeDeploymentTarget'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
