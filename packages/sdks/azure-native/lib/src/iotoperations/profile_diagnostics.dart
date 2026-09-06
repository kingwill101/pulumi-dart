// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_logs.dart';
import 'metrics.dart';

/// DataflowProfile Diagnostics properties
class ProfileDiagnostics {
  /// Diagnostic log settings for the resource.
  final pulumi.Input<DiagnosticsLogs?>? logs;
  /// The metrics settings for the resource.
  final pulumi.Input<Metrics?>? metrics;

  /// Creates a new [ProfileDiagnostics].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  const ProfileDiagnostics({
    this.logs,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?pulumi.Input.mapOptionalInputValue<DiagnosticsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<Metrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
    };
  }

  factory ProfileDiagnostics.fromMap(Map<String, dynamic> map) {
    return ProfileDiagnostics(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Metrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
