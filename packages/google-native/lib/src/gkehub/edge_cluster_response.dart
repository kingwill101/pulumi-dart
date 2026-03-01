// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponse {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String resourceLink;

  /// Creates a new [EdgeClusterResponse].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  EdgeClusterResponse({required this.resourceLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceLink': resourceLink};
  }

  factory EdgeClusterResponse.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponse(resourceLink: map['resourceLink'] as String);
  }
}
