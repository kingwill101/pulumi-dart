// ignore_for_file: unused_element, unnecessary_cast

import 'gke_cluster_config_response.dart';
import 'kubernetes_software_config_response.dart';

/// The configuration for running the Dataproc cluster on Kubernetes.
class KubernetesClusterConfigResponse {
  /// The configuration for running the Dataproc cluster on GKE.
  final GkeClusterConfigResponse gkeClusterConfig;
  /// Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  final String kubernetesNamespace;
  /// Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  final KubernetesSoftwareConfigResponse kubernetesSoftwareConfig;

  /// Creates a new [KubernetesClusterConfigResponse].
  /// [gkeClusterConfig] The configuration for running the Dataproc cluster on GKE.
  /// [kubernetesNamespace] Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
  /// [kubernetesSoftwareConfig] Optional. The software configuration for this Dataproc cluster running on Kubernetes.
  KubernetesClusterConfigResponse({
    required this.gkeClusterConfig,
    required this.kubernetesNamespace,
    required this.kubernetesSoftwareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterConfig': gkeClusterConfig.toMap(),
      'kubernetesNamespace': kubernetesNamespace,
      'kubernetesSoftwareConfig': kubernetesSoftwareConfig.toMap(),
    };
  }

  factory KubernetesClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterConfigResponse(
      gkeClusterConfig: GkeClusterConfigResponse.fromMap((map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      kubernetesNamespace: map['kubernetesNamespace'] as String,
      kubernetesSoftwareConfig: KubernetesSoftwareConfigResponse.fromMap((map['kubernetesSoftwareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

