// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'gke_node_pool_target_response.dart';
import 'namespaced_gke_deployment_target_response.dart';

/// The cluster's GKE config.
class GkeClusterConfigResponse {
  /// Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String gkeClusterTarget;

  /// Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  final NamespacedGkeDeploymentTargetResponse namespacedGkeDeploymentTarget;

  /// Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  final List<GkeNodePoolTargetResponse> nodePoolTarget;

  GkeClusterConfigResponse({
    required this.gkeClusterTarget,
    required this.namespacedGkeDeploymentTarget,
    required this.nodePoolTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterTarget'] = gkeClusterTarget;
    map['namespacedGkeDeploymentTarget'] =
        namespacedGkeDeploymentTarget.toMap();
    map['nodePoolTarget'] =
        Input.encodeList<GkeNodePoolTargetResponse, Map<String, dynamic>>(
            nodePoolTarget, (value) => value.toMap());
    return map;
  }

  factory GkeClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigResponse(
      gkeClusterTarget: map['gkeClusterTarget'] as String,
      namespacedGkeDeploymentTarget:
          NamespacedGkeDeploymentTargetResponse.fromMap(
              (map['namespacedGkeDeploymentTarget'] as Map)
                  .cast<String, dynamic>()),
      nodePoolTarget: Input.decodeList<GkeNodePoolTargetResponse>(
          map['nodePoolTarget'],
          (value) => GkeNodePoolTargetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
