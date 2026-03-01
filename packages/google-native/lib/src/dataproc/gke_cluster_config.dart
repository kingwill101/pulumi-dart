// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_target.dart';
import 'namespaced_gke_deployment_target.dart';

/// The cluster's GKE config.
class GkeClusterConfig {
  /// Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String? gkeClusterTarget;

  /// Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  final NamespacedGkeDeploymentTarget? namespacedGkeDeploymentTarget;

  /// Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  final List<GkeNodePoolTarget>? nodePoolTarget;

  /// Creates a new [GkeClusterConfig].
  /// [gkeClusterTarget] Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  /// [namespacedGkeDeploymentTarget] Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  /// [nodePoolTarget] Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  GkeClusterConfig({
    this.gkeClusterTarget,
    this.namespacedGkeDeploymentTarget,
    this.nodePoolTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterTarget': ?gkeClusterTarget,
      'namespacedGkeDeploymentTarget': ?namespacedGkeDeploymentTarget == null
          ? null
          : namespacedGkeDeploymentTarget!.toMap(),
      'nodePoolTarget': ?nodePoolTarget == null
          ? null
          : pulumi.Input.encodeList<GkeNodePoolTarget, Map<String, dynamic>>(
              nodePoolTarget!,
              (value) => value.toMap(),
            ),
    };
  }

  factory GkeClusterConfig.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfig(
      gkeClusterTarget: map['gkeClusterTarget'] == null
          ? null
          : map['gkeClusterTarget'] as String,
      namespacedGkeDeploymentTarget:
          map['namespacedGkeDeploymentTarget'] == null
          ? null
          : NamespacedGkeDeploymentTarget.fromMap(
              (map['namespacedGkeDeploymentTarget'] as Map)
                  .cast<String, dynamic>(),
            ),
      nodePoolTarget: map['nodePoolTarget'] == null
          ? null
          : pulumi.Input.decodeList<GkeNodePoolTarget>(
              map['nodePoolTarget'],
              (value) => GkeNodePoolTarget.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
