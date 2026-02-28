// ignore_for_file: unused_element, unnecessary_cast

/// GkeCluster contains information specific to GKE clusters.
class GkeClusterGkehubV1alpha {
  /// Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  final String? resourceLink;

  /// Creates a new [GkeClusterGkehubV1alpha].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE cluster. For example: //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster Zonal clusters are also supported.
  GkeClusterGkehubV1alpha({
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

  factory GkeClusterGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return GkeClusterGkehubV1alpha(
      resourceLink:
          map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}
