// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_logs_response.dart';
import 'metrics_response.dart';
import 'self_check_response.dart';
import 'traces_response.dart';

/// Broker Diagnostic Setting properties
class BrokerDiagnosticsResponse {
  /// Diagnostic log settings for the resource.
  final DiagnosticsLogsResponse? logs;
  /// The metrics settings for the resource.
  final MetricsResponse? metrics;
  /// The self check properties.
  final SelfCheckResponse? selfCheck;
  /// The trace properties.
  final TracesResponse? traces;

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
      'logs': ?logs == null ? null : logs!.toMap(),
      'metrics': ?metrics == null ? null : metrics!.toMap(),
      'selfCheck': ?selfCheck == null ? null : selfCheck!.toMap(),
      'traces': ?traces == null ? null : traces!.toMap(),
    };
  }

  factory BrokerDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerDiagnosticsResponse(
      logs: map['logs'] == null ? null : DiagnosticsLogsResponse.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      metrics: map['metrics'] == null ? null : MetricsResponse.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      selfCheck: map['selfCheck'] == null ? null : SelfCheckResponse.fromMap((map['selfCheck'] as Map).cast<String, dynamic>()),
      traces: map['traces'] == null ? null : TracesResponse.fromMap((map['traces'] as Map).cast<String, dynamic>()),
    );
  }
}

