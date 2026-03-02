// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrometheusMonitoring resources.
class PrometheusMonitoringState {
  /// The ID of the prometheus instance.
  final pulumi.Input<String>? clusterId;
  /// Yaml configuration for monitoring.
  final pulumi.Input<String>? configYaml;
  /// The name of the resource.
  final pulumi.Input<String>? monitoringName;
  /// Valid values: `stop`, `run`.
  final pulumi.Input<String>? status;
  /// Monitoring type: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  final pulumi.Input<String>? type;

  /// Creates a new [PrometheusMonitoringState].
  /// [clusterId] The ID of the prometheus instance.
  /// [configYaml] Yaml configuration for monitoring.
  /// [monitoringName] The name of the resource.
  /// [status] Valid values: `stop`, `run`.
  /// [type] Monitoring type: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  PrometheusMonitoringState({
    this.clusterId,
    this.configYaml,
    this.monitoringName,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'configYaml': ?configYaml,
      'monitoringName': ?monitoringName,
      'status': ?status,
      'type': ?type,
    };
  }

  factory PrometheusMonitoringState.fromMap(Map<String, dynamic> map) {
    return PrometheusMonitoringState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      configYaml: map['configYaml'] == null ? null : (map['configYaml']! as String).input(),
      monitoringName: map['monitoringName'] == null ? null : (map['monitoringName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

