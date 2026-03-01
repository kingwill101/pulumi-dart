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
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> configYaml,
    pulumi.Output<String>? status,
    required pulumi.Output<String> type,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      configYaml = pulumi.Input.asInput<String>(configYaml),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asInput<String>(type);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      configYaml: pulumi.Output.create<String>(map['configYaml'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

