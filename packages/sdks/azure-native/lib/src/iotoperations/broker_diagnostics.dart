// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_logs.dart';
import 'metrics.dart';
import 'self_check.dart';
import 'traces.dart';

/// Broker Diagnostic Setting properties
class BrokerDiagnostics {
  /// Diagnostic log settings for the resource.
  final pulumi.Input<DiagnosticsLogs>? logs;
  /// The metrics settings for the resource.
  final pulumi.Input<Metrics>? metrics;
  /// The self check properties.
  final pulumi.Input<SelfCheck>? selfCheck;
  /// The trace properties.
  final pulumi.Input<Traces>? traces;

  /// Creates a new [BrokerDiagnostics].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  /// [selfCheck] The self check properties.
  /// [traces] The trace properties.
  const BrokerDiagnostics({
    this.logs,
    this.metrics,
    this.selfCheck,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?pulumi.Input.mapOptionalInputValue<DiagnosticsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<Metrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'selfCheck': ?pulumi.Input.mapOptionalInputValue<SelfCheck, Map<String, dynamic>>(selfCheck, (value) => value.toMap()),
      'traces': ?pulumi.Input.mapOptionalInputValue<Traces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory BrokerDiagnostics.fromMap(Map<String, dynamic> map) {
    return BrokerDiagnostics(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Metrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfCheck: (() { final guardedValue = map['selfCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Traces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
