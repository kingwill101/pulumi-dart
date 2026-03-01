// ignore_for_file: unused_element, unnecessary_cast


class GetEnvServiceMonitorsMonitor {
  /// The YAML configuration string.
  final String configYaml;
  /// The name of the ServiceMonitor.
  final String envServiceMonitorName;
  /// The environment ID.
  final String environmentId;
  /// The ID of the ServiceMonitor. It formats as `<environment_id>:<namespace>:<env_service_monitor_name>`.
  final String id;
  /// The namespace.
  final String namespace;
  /// The region ID.
  final String regionId;
  /// The status of the ServiceMonitor.
  final String status;

  /// Creates a new [GetEnvServiceMonitorsMonitor].
  /// [configYaml] The YAML configuration string.
  /// [envServiceMonitorName] The name of the ServiceMonitor.
  /// [environmentId] The environment ID.
  /// [id] The ID of the ServiceMonitor. It formats as `<environment_id>:<namespace>:<env_service_monitor_name>`.
  /// [namespace] The namespace.
  /// [regionId] The region ID.
  /// [status] The status of the ServiceMonitor.
  GetEnvServiceMonitorsMonitor({
    required this.configYaml,
    required this.envServiceMonitorName,
    required this.environmentId,
    required this.id,
    required this.namespace,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configYaml': configYaml,
      'envServiceMonitorName': envServiceMonitorName,
      'environmentId': environmentId,
      'id': id,
      'namespace': namespace,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetEnvServiceMonitorsMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvServiceMonitorsMonitor(
      configYaml: map['configYaml'] as String,
      envServiceMonitorName: map['envServiceMonitorName'] as String,
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      namespace: map['namespace'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
    );
  }
}

