// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterResponseGkehubV1beta1 {
  /// Immutable. Self-link of the GCP resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String resourceLink;

  EdgeClusterResponseGkehubV1beta1({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory EdgeClusterResponseGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return EdgeClusterResponseGkehubV1beta1(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
