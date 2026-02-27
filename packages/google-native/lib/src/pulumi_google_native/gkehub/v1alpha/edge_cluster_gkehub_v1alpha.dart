// ignore_for_file: unused_element, unnecessary_cast

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeClusterGkehubV1alpha {
  /// Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  final String? resourceLink;

  EdgeClusterGkehubV1alpha({
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

  factory EdgeClusterGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return EdgeClusterGkehubV1alpha(
      resourceLink:
          map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}
