// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_prometheus_monitoring_prometheus_monitoring_args_doc}
/// The set of arguments for PrometheusMonitoring.
/// {@endtemplate}
/// {@macro pulumi_arms_prometheus_monitoring_prometheus_monitoring_args_doc}
class PrometheusMonitoringArgs {
  /// The ID of the prometheus instance.
  final pulumi.Input<String> clusterId;
  /// Yaml configuration for monitoring.
  final pulumi.Input<String> configYaml;
  /// Valid values: `stop`, `run`.
  final pulumi.Input<String>? status;
  /// Monitoring type: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  final pulumi.Input<String> type;

  /// Creates a new [PrometheusMonitoringArgs].
  /// [clusterId] The ID of the prometheus instance.
  /// [configYaml] Yaml configuration for monitoring.
  /// [status] Valid values: `stop`, `run`.
  /// [type] Monitoring type: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  PrometheusMonitoringArgs({
    required this.clusterId,
    required this.configYaml,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configYaml': configYaml,
      'status': ?status,
      'type': type,
    };
  }

  factory PrometheusMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return PrometheusMonitoringArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      configYaml: pulumi.Input.fromValue(map['configYaml'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

