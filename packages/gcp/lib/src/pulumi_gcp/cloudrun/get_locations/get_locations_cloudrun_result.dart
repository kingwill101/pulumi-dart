// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocations.
class GetLocationsCloudrunResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of Cloud Run locations available for the given project.
  final List<String> locations;
  final String project;

  GetLocationsCloudrunResult({
    required this.id,
    required this.locations,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['locations'] = locations;
    map['project'] = project;
    return map;
  }

  factory GetLocationsCloudrunResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsCloudrunResult(
      id: map['id'] as String,
      locations: (map['locations'] as List).cast<String>(),
      project: map['project'] as String,
    );
  }
}
