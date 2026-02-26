// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSKeyRing.
class GetKMSKeyRingResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String? project;

  GetKMSKeyRingResult({
    required this.id,
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKMSKeyRingResult.fromMap(Map<String, dynamic> map) {
    return GetKMSKeyRingResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
