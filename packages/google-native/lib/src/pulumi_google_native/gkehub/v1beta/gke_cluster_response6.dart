// ignore_for_file: unused_element, unnecessary_cast

/// GkeCluster contains information specific to GKE clusters.
class GkeClusterResponse6 {
  /// If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.
  final bool clusterMissing;

  /// Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final String resourceLink;

  GkeClusterResponse6({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterMissing'] = clusterMissing;
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory GkeClusterResponse6.fromMap(Map<String, dynamic> map) {
    return GkeClusterResponse6(
      clusterMissing: map['clusterMissing'] as bool,
      resourceLink: map['resourceLink'] as String,
    );
  }
}
