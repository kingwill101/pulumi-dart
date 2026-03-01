// ignore_for_file: unused_element, unnecessary_cast

/// GkeCluster contains information specific to GKE clusters.
class GkeClusterResponseGkehubV1beta {
  /// If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.
  final bool clusterMissing;

  /// Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final String resourceLink;

  /// Creates a new [GkeClusterResponseGkehubV1beta].
  /// [clusterMissing] If cluster_missing is set then it denotes that the GKE cluster no longer exists in the GKE Control Plane.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  GkeClusterResponseGkehubV1beta({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMissing': clusterMissing,
      'resourceLink': resourceLink,
    };
  }

  factory GkeClusterResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return GkeClusterResponseGkehubV1beta(
      clusterMissing: map['clusterMissing'] as bool,
      resourceLink: map['resourceLink'] as String,
    );
  }
}
