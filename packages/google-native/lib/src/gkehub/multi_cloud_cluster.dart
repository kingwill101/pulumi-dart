// ignore_for_file: unused_element, unnecessary_cast

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudCluster {
  /// Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  final String? resourceLink;

  /// Creates a new [MultiCloudCluster].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  MultiCloudCluster({this.resourceLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceLink': ?resourceLink};
  }

  factory MultiCloudCluster.fromMap(Map<String, dynamic> map) {
    return MultiCloudCluster(
      resourceLink: map['resourceLink'] == null
          ? null
          : map['resourceLink'] as String,
    );
  }
}
