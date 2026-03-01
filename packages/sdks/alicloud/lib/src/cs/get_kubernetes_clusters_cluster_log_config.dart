// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClustersClusterLogConfig {
  /// Log Service project name.
  final String project;
  /// Type of collecting logs.
  final String type;

  /// Creates a new [GetKubernetesClustersClusterLogConfig].
  /// [project] Log Service project name.
  /// [type] Type of collecting logs.
  GetKubernetesClustersClusterLogConfig({
    required this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'type': type,
    };
  }

  factory GetKubernetesClustersClusterLogConfig.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersClusterLogConfig(
      project: map['project'] as String,
      type: map['type'] as String,
    );
  }
}

