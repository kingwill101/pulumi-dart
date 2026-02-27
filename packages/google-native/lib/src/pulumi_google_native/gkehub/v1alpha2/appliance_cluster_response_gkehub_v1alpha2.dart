// ignore_for_file: unused_element, unnecessary_cast

/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterResponseGkehubV1alpha2 {
  /// Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final String resourceLink;

  ApplianceClusterResponseGkehubV1alpha2({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory ApplianceClusterResponseGkehubV1alpha2.fromMap(
      Map<String, dynamic> map) {
    return ApplianceClusterResponseGkehubV1alpha2(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
