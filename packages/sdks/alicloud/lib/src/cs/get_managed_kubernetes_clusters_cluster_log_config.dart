// ignore_for_file: unused_element, unnecessary_cast


class GetManagedKubernetesClustersClusterLogConfig {
  /// Log Service project name.
  final String project;
  /// Type of collecting logs.
  final String type;

  /// Creates a new [GetManagedKubernetesClustersClusterLogConfig].
  /// [project] Log Service project name.
  /// [type] Type of collecting logs.
  GetManagedKubernetesClustersClusterLogConfig({
    required this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'type': type,
    };
  }

  factory GetManagedKubernetesClustersClusterLogConfig.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersClusterLogConfig(
      project: map['project'] as String,
      type: map['type'] as String,
    );
  }
}

