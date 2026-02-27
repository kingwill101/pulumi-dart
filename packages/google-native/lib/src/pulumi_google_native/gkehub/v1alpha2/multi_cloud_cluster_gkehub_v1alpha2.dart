// ignore_for_file: unused_element, unnecessary_cast

/// MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
class MultiCloudClusterGkehubV1alpha2 {
  /// Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  final String? resourceLink;

  MultiCloudClusterGkehubV1alpha2({
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceLinkValue = resourceLink;
    if (resourceLinkValue != null) {
      map['resourceLink'] = resourceLinkValue;
    }
    return map;
  }

  factory MultiCloudClusterGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return MultiCloudClusterGkehubV1alpha2(
      resourceLink:
          map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}
