// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupShareSettingsProjectMap {
  /// The identifier for this object. Format specified above.
  final String id;

  /// The project id/number should be the same as the key of this project config in the project map.
  final String projectId;

  /// Creates a new [NodeGroupShareSettingsProjectMap].
  /// [id] The identifier for this object. Format specified above.
  /// [projectId] The project id/number should be the same as the key of this project config in the project map.
  NodeGroupShareSettingsProjectMap({
    required this.id,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['projectId'] = projectId;
    return map;
  }

  factory NodeGroupShareSettingsProjectMap.fromMap(Map<String, dynamic> map) {
    return NodeGroupShareSettingsProjectMap(
      id: map['id'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
