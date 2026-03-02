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
    required this.clusterId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.type,
  });

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
      clusterId: (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

