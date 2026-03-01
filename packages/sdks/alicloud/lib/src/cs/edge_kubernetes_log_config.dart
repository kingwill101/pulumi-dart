// ignore_for_file: unused_element, unnecessary_cast


class EdgeKubernetesLogConfig {
  /// Log Service project name, cluster logs will output to this project.
  final String? project;
  /// Type of collecting logs, only `SLS` are supported currently.
  final String type;

  /// Creates a new [EdgeKubernetesLogConfig].
  /// [project] Log Service project name, cluster logs will output to this project.
  /// [type] Type of collecting logs, only `SLS` are supported currently.
  EdgeKubernetesLogConfig({
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'type': type,
    };
  }

  factory EdgeKubernetesLogConfig.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesLogConfig(
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] as String,
    );
  }
}

