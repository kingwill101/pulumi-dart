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
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsLogsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfCheck: (() { final guardedValue = map['selfCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TracesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

