// ignore_for_file: unused_element, unnecessary_cast


class GetPrometheusMonitoringsPrometheusMonitoring {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// The monitoring configuration. The value is a YAML string.
  final String configYaml;
  /// The ID of the Prometheus Monitoring. It formats as `<cluster_id>:<monitoring_name>:<type>`.
  final String id;
  /// The name of the monitoring configuration.
  final String monitoringName;
  /// The status of the monitoring configuration. Valid values: `run`, `stop`.
  final String status;
  /// The type of the monitoring configuration. Valid values: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  final String type;

  /// Creates a new [GetPrometheusMonitoringsPrometheusMonitoring].
  /// [clusterId] The ID of the Prometheus instance.
  /// [configYaml] The monitoring configuration. The value is a YAML string.
  /// [id] The ID of the Prometheus Monitoring. It formats as `<cluster_id>:<monitoring_name>:<type>`.
  /// [monitoringName] The name of the monitoring configuration.
  /// [status] The status of the monitoring configuration. Valid values: `run`, `stop`.
  /// [type] The type of the monitoring configuration. Valid values: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  GetPrometheusMonitoringsPrometheusMonitoring({
    required this.clusterId,
    required this.configYaml,
    required this.id,
    required this.monitoringName,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configYaml': configYaml,
      'id': id,
      'monitoringName': monitoringName,
      'status': status,
      'type': type,
    };
  }

  factory GetPrometheusMonitoringsPrometheusMonitoring.fromMap(Map<String, dynamic> map) {
    return GetPrometheusMonitoringsPrometheusMonitoring(
      clusterId: map['clusterId'] as String,
      configYaml: map['configYaml'] as String,
      id: map['id'] as String,
      monitoringName: map['monitoringName'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

