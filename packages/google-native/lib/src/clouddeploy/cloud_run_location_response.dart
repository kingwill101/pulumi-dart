// ignore_for_file: unused_element, unnecessary_cast

/// Information specifying where to deploy a Cloud Run Service.
class CloudRunLocationResponse {
  /// The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  final String location;

  /// Creates a new [CloudRunLocationResponse].
  /// [location] The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  CloudRunLocationResponse({required this.location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location};
  }

  factory CloudRunLocationResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunLocationResponse(location: map['location'] as String);
  }
}
