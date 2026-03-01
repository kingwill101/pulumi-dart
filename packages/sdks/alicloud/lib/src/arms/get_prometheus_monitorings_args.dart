// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_prometheus_monitorings_get_prometheus_monitorings_args_doc}
/// Arguments for getPrometheusMonitorings.
/// {@endtemplate}
/// {@macro pulumi_arms_get_prometheus_monitorings_get_prometheus_monitorings_args_doc}
class GetPrometheusMonitoringsArgs {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// A list of Prometheus Monitoring IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Prometheus Monitoring name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the monitoring configuration. Valid values: `run`, `stop`.
  final pulumi.Input<String>? status;
  /// The type of the monitoring configuration. Valid values: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetPrometheusMonitoringsArgs].
  /// [clusterId] The ID of the Prometheus instance.
  /// [ids] A list of Prometheus Monitoring IDs.
  /// [nameRegex] A regex string to filter results by Prometheus Monitoring name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the monitoring configuration. Valid values: `run`, `stop`.
  /// [type] The type of the monitoring configuration. Valid values: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  GetPrometheusMonitoringsArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetPrometheusMonitoringsArgs.fromMap(Map<String, dynamic> map) {
    return GetPrometheusMonitoringsArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

