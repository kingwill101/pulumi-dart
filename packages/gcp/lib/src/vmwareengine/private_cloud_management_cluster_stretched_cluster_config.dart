// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudManagementClusterStretchedClusterConfig {
  /// Zone that will remain operational when connection between the two zones is lost.
  /// Specify the zone in the following format: projects/{project}/locations/{location}.
  final String? preferredLocation;

  /// Additional zone for a higher level of availability and load balancing.
  /// Specify the zone in the following format: projects/{project}/locations/{location}.
  final String? secondaryLocation;

  /// Creates a new [PrivateCloudManagementClusterStretchedClusterConfig].
  /// [preferredLocation] Zone that will remain operational when connection between the two zones is lost.
  /// [secondaryLocation] Additional zone for a higher level of availability and load balancing.
  PrivateCloudManagementClusterStretchedClusterConfig({
    this.preferredLocation,
    this.secondaryLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredLocationValue = preferredLocation;
    if (preferredLocationValue != null) {
      map['preferredLocation'] = preferredLocationValue;
    }
    final secondaryLocationValue = secondaryLocation;
    if (secondaryLocationValue != null) {
      map['secondaryLocation'] = secondaryLocationValue;
    }
    return map;
  }

  factory PrivateCloudManagementClusterStretchedClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return PrivateCloudManagementClusterStretchedClusterConfig(
      preferredLocation: map['preferredLocation'] == null
          ? null
          : map['preferredLocation'] as String,
      secondaryLocation: map['secondaryLocation'] == null
          ? null
          : map['secondaryLocation'] as String,
    );
  }
}
