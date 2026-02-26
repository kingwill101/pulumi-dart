// ignore_for_file: unused_element, unnecessary_cast

/// A full, namespace-isolated deployment target for an existing GKE cluster.
class NamespacedGkeDeploymentTargetResponse2 {
  /// Optional. A namespace within the GKE cluster to deploy into.
  final String clusterNamespace;

  /// Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String targetGkeCluster;

  NamespacedGkeDeploymentTargetResponse2({
    required this.clusterNamespace,
    required this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterNamespace'] = clusterNamespace;
    map['targetGkeCluster'] = targetGkeCluster;
    return map;
  }

  factory NamespacedGkeDeploymentTargetResponse2.fromMap(
      Map<String, dynamic> map) {
    return NamespacedGkeDeploymentTargetResponse2(
      clusterNamespace: map['clusterNamespace'] as String,
      targetGkeCluster: map['targetGkeCluster'] as String,
    );
  }
}
