// ignore_for_file: unused_element, unnecessary_cast


class GetEnvPodMonitorsMonitor {
  /// The YAML configuration string.
  final String configYaml;
  /// The name of the PodMonitor.
  final String envPodMonitorName;
  /// The environment ID.
  final String environmentId;
  /// The ID of the PodMonitor. It formats as `<environment_id>:<namespace>:<env_pod_monitor_name>`.
  final String id;
  /// The namespace.
  final String namespace;
  /// The region ID.
  final String regionId;
  /// The status of the PodMonitor.
  final String status;

  /// Creates a new [GetEnvPodMonitorsMonitor].
  /// [configYaml] The YAML configuration string.
  /// [envPodMonitorName] The name of the PodMonitor.
  /// [environmentId] The environment ID.
  /// [id] The ID of the PodMonitor. It formats as `<environment_id>:<namespace>:<env_pod_monitor_name>`.
  /// [namespace] The namespace.
  /// [regionId] The region ID.
  /// [status] The status of the PodMonitor.
  GetEnvPodMonitorsMonitor({
    required this.configYaml,
    required this.envPodMonitorName,
    required this.environmentId,
    required this.id,
    required this.namespace,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configYaml': configYaml,
      'envPodMonitorName': envPodMonitorName,
      'environmentId': environmentId,
      'id': id,
      'namespace': namespace,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetEnvPodMonitorsMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvPodMonitorsMonitor(
      configYaml: map['configYaml'] as String,
      envPodMonitorName: map['envPodMonitorName'] as String,
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      namespace: map['namespace'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
    );
  }
}

