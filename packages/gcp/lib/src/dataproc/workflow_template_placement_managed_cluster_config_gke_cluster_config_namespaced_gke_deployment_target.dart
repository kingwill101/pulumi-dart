// ignore_for_file: unused_element, unnecessary_cast


class WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget {
  /// A namespace within the GKE cluster to deploy into.
  final String? clusterNamespace;
  /// The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String? targetGkeCluster;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget].
  /// [clusterNamespace] A namespace within the GKE cluster to deploy into.
  /// [targetGkeCluster] The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget({
    this.clusterNamespace,
    this.targetGkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNamespace': ?clusterNamespace,
      'targetGkeCluster': ?targetGkeCluster,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget(
      clusterNamespace: map['clusterNamespace'] == null ? null : map['clusterNamespace'] as String,
      targetGkeCluster: map['targetGkeCluster'] == null ? null : map['targetGkeCluster'] as String,
    );
  }
}

