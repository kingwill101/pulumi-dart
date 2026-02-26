// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConfig.
class GetConfigResult {
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;

  GetConfigResult({
    required this.description,
    required this.id,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
