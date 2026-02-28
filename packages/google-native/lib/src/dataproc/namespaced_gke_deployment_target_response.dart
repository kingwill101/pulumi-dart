// ignore_for_file: unused_element, unnecessary_cast


/// Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTargetResponse {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final String clusterNamespace;
  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String targetGkeCluster;

  /// Creates a new [NamespacedGkeDeploymentTargetResponse].
  /// [clusterNamespace] Optional. A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  NamespacedGkeDeploymentTargetResponse({
    required this.clusterNamespace,
    required this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': clusterNamespace,
      'targetGkeCluster': targetGkeCluster,
    };
  }

  factory NamespacedGkeDeploymentTargetResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTargetResponse(
      clusterNamespace: map['clusterNamespace'] as String,
      targetGkeCluster: map['targetGkeCluster'] as String,
    );
  }
}

