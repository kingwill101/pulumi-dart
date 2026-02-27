// ignore_for_file: unused_element, unnecessary_cast

/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterGkehubV1alpha2 {
  /// Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final String? resourceLink;

  ApplianceClusterGkehubV1alpha2({
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

  factory ApplianceClusterGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return ApplianceClusterGkehubV1alpha2(
      resourceLink:
          map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}
