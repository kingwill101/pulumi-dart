// ignore_for_file: unused_element, unnecessary_cast


/// ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
class ApplianceClusterGkehubV1beta1 {
  /// Immutable. Self-link of the GCP resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  final String? resourceLink;

  /// Creates a new [ApplianceClusterGkehubV1beta1].
  /// [resourceLink] Immutable. Self-link of the GCP resource for the Appliance Cluster. For example: //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ApplianceClusterGkehubV1beta1({
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': ?resourceLink,
    };
  }

  factory ApplianceClusterGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return ApplianceClusterGkehubV1beta1(
      resourceLink: map['resourceLink'] == null ? null : map['resourceLink'] as String,
    );
  }
}

