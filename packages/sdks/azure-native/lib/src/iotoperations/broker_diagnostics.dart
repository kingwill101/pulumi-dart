// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_logs.dart';
import 'metrics.dart';
import 'self_check.dart';
import 'traces.dart';

/// Broker Diagnostic Setting properties
class BrokerDiagnostics {
  /// Diagnostic log settings for the resource.
  final DiagnosticsLogs? logs;
  /// The metrics settings for the resource.
  final Metrics? metrics;
  /// The self check properties.
  final SelfCheck? selfCheck;
  /// The trace properties.
  final Traces? traces;

  /// Creates a new [BrokerDiagnostics].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  /// [selfCheck] The self check properties.
  /// [traces] The trace properties.
  BrokerDiagnostics({
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

  factory BrokerDiagnostics.fromMap(Map<String, dynamic> map) {
    return BrokerDiagnostics(
      logs: map['logs'] == null ? null : DiagnosticsLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      metrics: map['metrics'] == null ? null : Metrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      selfCheck: map['selfCheck'] == null ? null : SelfCheck.fromMap((map['selfCheck'] as Map).cast<String, dynamic>()),
      traces: map['traces'] == null ? null : Traces.fromMap((map['traces'] as Map).cast<String, dynamic>()),
    );
  }
}

