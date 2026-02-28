// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config.dart';
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_kubernetes_software_config.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfig {
  /// The configuration for running the Dataproc cluster on GKE.
  final ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig
      gkeClusterConfig;

  /// A namespace within the Kubernetes cluster to deploy into.
  /// If this namespace does not exist, it is created.
  /// If it  exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it.
  /// If not specified, the name of the Dataproc Cluster is used.
  final String? kubernetesNamespace;

  /// The software configuration for this Dataproc cluster running on Kubernetes.
  final ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig
      kubernetesSoftwareConfig;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfig].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] A namespace within the Kubernetes cluster to deploy into.
  /// [kubernetesSoftwareConfig] The software configuration for this Dataproc cluster running on Kubernetes.
  ClusterVirtualClusterConfigKubernetesClusterConfig({
    required this.gkeClusterConfig,
    this.kubernetesNamespace,
    required this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterConfig'] = gkeClusterConfig.toMap();
    final kubernetesNamespaceValue = kubernetesNamespace;
    if (kubernetesNamespaceValue != null) {
      map['kubernetesNamespace'] = kubernetesNamespaceValue;
    }
    map['kubernetesSoftwareConfig'] = kubernetesSoftwareConfig.toMap();
    return map;
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfig(
      gkeClusterConfig:
          ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfig
              .fromMap(
                  (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      kubernetesNamespace: map['kubernetesNamespace'] == null
          ? null
          : map['kubernetesNamespace'] as String,
      kubernetesSoftwareConfig:
          ClusterVirtualClusterConfigKubernetesClusterConfigKubernetesSoftwareConfig
              .fromMap((map['kubernetesSoftwareConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
