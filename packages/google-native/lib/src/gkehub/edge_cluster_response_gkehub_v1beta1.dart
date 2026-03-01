// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponseGkehubV1beta1 {
  /// Immutable. Self-link of the GCP resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String resourceLink;

  /// Creates a new [EdgeClusterResponseGkehubV1beta1].
  /// [resourceLink] Immutable. Self-link of the GCP resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  EdgeClusterResponseGkehubV1beta1({required this.resourceLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceLink': resourceLink};
  }

  factory EdgeClusterResponseGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponseGkehubV1beta1(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
