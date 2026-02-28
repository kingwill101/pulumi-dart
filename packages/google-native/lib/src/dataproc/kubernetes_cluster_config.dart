// ignore_for_file: unused_element, unnecessary_cast

import 'gke_cluster_config.dart';
import 'kubernetes_software_config.dart';

/// The configuration for running the Dataproc cluster on Kubernetes.
class KubernetesClusterConfig {
  /// The configuration for running the Dataproc cluster on GKE.
  final GkeClusterConfig gkeClusterConfig;

  /// Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  final String? kubernetesNamespace;

  /// Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  final KubernetesSoftwareConfig? kubernetesSoftwareConfig;

  /// Creates a new [KubernetesClusterConfig].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  /// [kubernetesSoftwareConfig] Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  KubernetesClusterConfig({
    required this.gkeClusterConfig,
    this.kubernetesNamespace,
    this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterConfig'] = gkeClusterConfig.toMap();
    final kubernetesNamespaceValue = kubernetesNamespace;
    if (kubernetesNamespaceValue != null) {
      map['kubernetesNamespace'] = kubernetesNamespaceValue;
    }
    final kubernetesSoftwareConfigValue = kubernetesSoftwareConfig;
    if (kubernetesSoftwareConfigValue != null) {
      map['kubernetesSoftwareConfig'] = kubernetesSoftwareConfigValue.toMap();
    }
    return map;
  }

  factory KubernetesClusterConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterConfig(
      gkeClusterConfig: GkeClusterConfig.fromMap(
          (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      kubernetesNamespace: map['kubernetesNamespace'] == null
          ? null
          : map['kubernetesNamespace'] as String,
      kubernetesSoftwareConfig: map['kubernetesSoftwareConfig'] == null
          ? null
          : KubernetesSoftwareConfig.fromMap(
              (map['kubernetesSoftwareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
