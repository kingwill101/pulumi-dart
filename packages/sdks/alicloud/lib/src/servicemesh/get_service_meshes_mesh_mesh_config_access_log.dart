// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigAccessLog {
  /// Whether to enable CNI.
  final bool enabled;
  /// The Service grid audit that to the project.
  final String project;

  /// Creates a new [GetServiceMeshesMeshMeshConfigAccessLog].
  /// [enabled] Whether to enable CNI.
  /// [project] The Service grid audit that to the project.
  GetServiceMeshesMeshMeshConfigAccessLog({
    required this.enabled,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'project': project,
    };
  }

  factory GetServiceMeshesMeshMeshConfigAccessLog.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigAccessLog(
      enabled: map['enabled'] as bool,
      project: map['project'] as String,
    );
  }
}

