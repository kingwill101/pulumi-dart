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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? configYaml,
    pulumi.Output<String>? monitoringName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      configYaml = pulumi.Input.asOptionalInput<String>(configYaml),
      monitoringName = pulumi.Input.asOptionalInput<String>(monitoringName),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      configYaml: map['configYaml'] == null ? null : pulumi.Output.create<String>(map['configYaml'] as String),
      monitoringName: map['monitoringName'] == null ? null : pulumi.Output.create<String>(map['monitoringName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

