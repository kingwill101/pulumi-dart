// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrometheusMonitoringsPrometheusMonitoring {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// The monitoring configuration. The value is a YAML string.
  final pulumi.Input<String> configYaml;
  /// The ID of the Prometheus Monitoring. It formats as `<cluster_id>:<monitoring_name>:<type>`.
  final pulumi.Input<String> id;
  /// The name of the monitoring configuration.
  final pulumi.Input<String> monitoringName;
  /// The status of the monitoring configuration. Valid values: `run`, `stop`.
  final pulumi.Input<String> status;
  /// The type of the monitoring configuration. Valid values: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  final pulumi.Input<String> type;

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
      clusterId: (map['clusterId'] as String).input(),
      configYaml: (map['configYaml'] as String).input(),
      id: (map['id'] as String).input(),
      monitoringName: (map['monitoringName'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

