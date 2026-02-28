// ignore_for_file: unused_element, unnecessary_cast


/// Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTarget {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final String? clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String? targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTarget].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  NamespacedGkeDeploymentTarget({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': ?clusterNamespace,
      'targetGkeCluster': ?targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTarget(
      clusterNamespace: map['clusterNamespace'] == null ? null : map['clusterNamespace'] as String,
      targetGkeCluster: map['targetGkeCluster'] == null ? null : map['targetGkeCluster'] as String,
    );
  }
}

