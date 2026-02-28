// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of a stretched cluster.
class StretchedClusterConfigResponse {
  /// Zone that will remain operational when connection between the two zones is lost. Specify the resource name of a zone that belongs to the region of the private cloud. For example: `projects/{project}/locations/europe-west3-a` where `{project}` can either be a project number or a project ID.
  final String preferredLocation;
  /// Additional zone for a higher level of availability and load balancing. Specify the resource name of a zone that belongs to the region of the private cloud. For example: `projects/{project}/locations/europe-west3-b` where `{project}` can either be a project number or a project ID.
  final String secondaryLocation;

  /// Creates a new [StretchedClusterConfigResponse].
  /// [preferredLocation] Zone that will remain operational when connection between the two zones is lost. Specify the resource name of a zone that belongs to the region of the private cloud. For example: `projects/{project}/locations/europe-west3-a` where `{project}` can either be a project number or a project ID.
  /// [secondaryLocation] Additional zone for a higher level of availability and load balancing. Specify the resource name of a zone that belongs to the region of the private cloud. For example: `projects/{project}/locations/europe-west3-b` where `{project}` can either be a project number or a project ID.
  StretchedClusterConfigResponse({
    required this.preferredLocation,
    required this.secondaryLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredLocation': preferredLocation,
      'secondaryLocation': secondaryLocation,
    };
  }

  factory StretchedClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return StretchedClusterConfigResponse(
      preferredLocation: map['preferredLocation'] as String,
      secondaryLocation: map['secondaryLocation'] as String,
    );
  }
}

