// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNodeTypes.
class GetNodeTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of node types available in the given zone and project.
  final List<String> names;
  final String project;
  final String zone;

  /// Creates a new [GetNodeTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list of node types available in the given zone and project.
  /// [project] Required.
  /// [zone] Required.
  GetNodeTypesResult({
    required this.id,
    required this.names,
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['names'] = names;
    map['project'] = project;
    map['zone'] = zone;
    return map;
  }

  factory GetNodeTypesResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTypesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
