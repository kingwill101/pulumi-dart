// ignore_for_file: unused_element, unnecessary_cast

/// Information specifying where to deploy a Cloud Run Service.
class CloudRunLocation {
  /// The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  final String location;

  CloudRunLocation({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory CloudRunLocation.fromMap(Map<String, dynamic> map) {
    return CloudRunLocation(
      location: map['location'] as String,
    );
  }
}
