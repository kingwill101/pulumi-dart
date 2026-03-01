// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterGkehubV1alpha {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String? resourceLink;

  /// Creates a new [EdgeClusterGkehubV1alpha].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  EdgeClusterGkehubV1alpha({this.resourceLink});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceLink': ?resourceLink};
  }

  factory EdgeClusterGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return EdgeClusterGkehubV1alpha(
      resourceLink: map['resourceLink'] == null
          ? null
          : map['resourceLink'] as String,
    );
  }
}
