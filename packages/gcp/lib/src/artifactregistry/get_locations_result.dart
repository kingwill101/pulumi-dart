// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of Artifact Registry locations available for the given project.
  final List<String> locations;
  final String project;

  /// Creates a new [GetLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] The list of Artifact Registry locations available for the given project.
  /// [project] Required.
  GetLocationsResult({
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

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: map['id'] as String,
      locations: (map['locations'] as List).cast<String>(),
      project: map['project'] as String,
    );
  }
}
