// ignore_for_file: unused_element, unnecessary_cast

/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterResponseGkehubV1beta1 {
  /// Immutable. Self-link of the GCP resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final String resourceLink;

  ApplianceClusterResponseGkehubV1beta1({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory ApplianceClusterResponseGkehubV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ApplianceClusterResponseGkehubV1beta1(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
