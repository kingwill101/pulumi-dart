// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_logs_response.dart';
import 'metrics_response.dart';
import 'self_check_response.dart';
import 'traces_response.dart';

/// Broker Diagnostic Setting properties
class BrokerDiagnosticsResponse {
  /// Diagnostic log settings for the resource.
  final pulumi.Input<DiagnosticsLogsResponse>? logs;
  /// The metrics settings for the resource.
  final pulumi.Input<MetricsResponse>? metrics;
  /// The self check properties.
  final pulumi.Input<SelfCheckResponse>? selfCheck;
  /// The trace properties.
  final pulumi.Input<TracesResponse>? traces;

  /// Creates a new [BrokerDiagnosticsResponse].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  /// [selfCheck] The self check properties.
  /// [traces] The trace properties.
  BrokerDiagnosticsResponse({
    this.logs,
    this.metrics,
    this.selfCheck,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?pulumi.Input.mapOptionalInputValue<DiagnosticsLogsResponse, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<MetricsResponse, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'selfCheck': ?pulumi.Input.mapOptionalInputValue<SelfCheckResponse, Map<String, dynamic>>(selfCheck, (value) => value.toMap()),
      'traces': ?pulumi.Input.mapOptionalInputValue<TracesResponse, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory BrokerDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerDiagnosticsResponse(
      logs: map['logs'] == null ? null : (DiagnosticsLogsResponse.fromMap((map['logs'] as Map).cast<String, dynamic>())).input(),
      metrics: map['metrics'] == null ? null : (MetricsResponse.fromMap((map['metrics'] as Map).cast<String, dynamic>())).input(),
      selfCheck: map['selfCheck'] == null ? null : (SelfCheckResponse.fromMap((map['selfCheck'] as Map).cast<String, dynamic>())).input(),
      traces: map['traces'] == null ? null : (TracesResponse.fromMap((map['traces'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

