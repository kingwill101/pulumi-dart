// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig {
  /// A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster
  /// (the GKE cluster can be zonal or regional)
  final String? gkeClusterTarget;

  /// GKE node pools where workloads will be scheduled. At least one node pool must be assigned the `DEFAULT`
  /// GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a `DEFAULT` GkeNodePoolTarget.
  /// Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  final List<
          ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget>?
      nodePoolTargets;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig].
  /// [gkeClusterTarget] A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster
  /// [nodePoolTargets] GKE node pools where workloads will be scheduled. At least one node pool must be assigned the `DEFAULT`
  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig({
    this.gkeClusterTarget,
    this.nodePoolTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClusterTargetValue = gkeClusterTarget;
    if (gkeClusterTargetValue != null) {
      map['gkeClusterTarget'] = gkeClusterTargetValue;
    }
    final nodePoolTargetsValue = nodePoolTargets;
    if (nodePoolTargetsValue != null) {
      map['nodePoolTargets'] = pulumi.Input.encodeList<
          ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget,
          Map<String, dynamic>>(nodePoolTargetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig(
      gkeClusterTarget: map['gkeClusterTarget'] == null
          ? null
          : map['gkeClusterTarget'] as String,
      nodePoolTargets: map['nodePoolTargets'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget>(
              map['nodePoolTargets'],
              (value) =>
                  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
