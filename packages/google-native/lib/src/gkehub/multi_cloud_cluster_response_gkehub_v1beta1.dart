// ignore_for_file: unused_element, unnecessary_cast

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudClusterResponseGkehubV1beta1 {
  /// If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  final bool clusterMissing;

  /// Immutable. Self-link of the GCP resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  final String resourceLink;

  /// Creates a new [MultiCloudClusterResponseGkehubV1beta1].
  /// [clusterMissing] If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  /// [resourceLink] Immutable. Self-link of the GCP resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  MultiCloudClusterResponseGkehubV1beta1({
    required this.clusterMissing,
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMissing': clusterMissing,
      'resourceLink': resourceLink,
    };
  }

  factory MultiCloudClusterResponseGkehubV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultiCloudClusterResponseGkehubV1beta1(
      clusterMissing: map['clusterMissing'] as bool,
      resourceLink: map['resourceLink'] as String,
    );
  }
}
