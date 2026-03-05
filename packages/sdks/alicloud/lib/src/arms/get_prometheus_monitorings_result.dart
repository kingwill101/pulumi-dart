// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheus_monitorings_prometheus_monitoring.dart';

/// Result data returned by getPrometheusMonitorings.
class GetPrometheusMonitoringsResult {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Prometheus Monitoring names.
  final List<String> names;
  final String? outputFile;
  /// A list of Prometheus Monitorings. Each element contains the following attributes:
  final List<GetPrometheusMonitoringsPrometheusMonitoring> prometheusMonitorings;
  /// The status of the monitoring configuration.
  final String? status;
  /// The type of the monitoring configuration.
  final String? type;

  /// Creates a new [GetPrometheusMonitoringsResult].
  /// [clusterId] The ID of the Prometheus instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Prometheus Monitoring names.
  /// [outputFile] Optional.
  /// [prometheusMonitorings] A list of Prometheus Monitorings. Each element contains the following attributes:
  /// [status] The status of the monitoring configuration.
  /// [type] The type of the monitoring configuration.
  GetPrometheusMonitoringsResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.prometheusMonitorings,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'prometheusMonitorings': pulumi.Input.encodeList<GetPrometheusMonitoringsPrometheusMonitoring, Map<String, dynamic>>(prometheusMonitorings, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetPrometheusMonitoringsResult.fromMap(Map<String, dynamic> map) {
    return GetPrometheusMonitoringsResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prometheusMonitorings: pulumi.Input.decodeList<GetPrometheusMonitoringsPrometheusMonitoring>(map['prometheusMonitorings']!, (value) => GetPrometheusMonitoringsPrometheusMonitoring.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

