// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponseGkehubV1alpha2 {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String resourceLink;

  EdgeClusterResponseGkehubV1alpha2({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory EdgeClusterResponseGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponseGkehubV1alpha2(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
