// ignore_for_file: unused_element, unnecessary_cast


/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterGkehubV1alpha2 {
  /// Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final String? resourceLink;

  /// Creates a new [ApplianceClusterGkehubV1alpha2].
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ApplianceClusterGkehubV1alpha2({
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': ?resourceLink,
    };
  }

  factory ApplianceClusterGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return ApplianceClusterGkehubV1alpha2(
      resourceLink: map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}

