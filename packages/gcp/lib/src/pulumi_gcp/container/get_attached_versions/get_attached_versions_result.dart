// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAttachedVersions.
class GetAttachedVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String project;

  /// A list of versions available for use with this project and location.
  final List<String> validVersions;

  GetAttachedVersionsResult({
    required this.id,
    required this.location,
    required this.project,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    map['project'] = project;
    map['validVersions'] = validVersions;
    return map;
  }

  factory GetAttachedVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedVersionsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}
