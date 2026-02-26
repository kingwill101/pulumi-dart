// ignore_for_file: unused_element, unnecessary_cast

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremClusterResponse2 {
  /// Immutable. Whether the cluster is an admin cluster.
  final bool adminCluster;

  /// If cluster_missing is set then it denotes that API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no longer exists.
  final bool clusterMissing;

  /// Immutable. The on prem cluster's type.
  final String clusterType;

  /// Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  final String resourceLink;

  OnPremClusterResponse2({
    required this.adminCluster,
    required this.clusterMissing,
    required this.clusterType,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminCluster'] = adminCluster;
    map['clusterMissing'] = clusterMissing;
    map['clusterType'] = clusterType;
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory OnPremClusterResponse2.fromMap(Map<String, dynamic> map) {
    return OnPremClusterResponse2(
      adminCluster: map['adminCluster'] as bool,
      clusterMissing: map['clusterMissing'] as bool,
      clusterType: map['clusterType'] as String,
      resourceLink: map['resourceLink'] as String,
    );
  }
}
