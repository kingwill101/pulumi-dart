// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_logs.dart';
import 'metrics.dart';

/// DataflowProfile Diagnostics properties
class ProfileDiagnostics {
  /// Diagnostic log settings for the resource.
  final DiagnosticsLogs? logs;
  /// The metrics settings for the resource.
  final Metrics? metrics;

  /// Creates a new [ProfileDiagnostics].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  ProfileDiagnostics({
    this.logs,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs == null ? null : logs!.toMap(),
      'metrics': ?metrics == null ? null : metrics!.toMap(),
    };
  }

  factory ProfileDiagnostics.fromMap(Map<String, dynamic> map) {
    return ProfileDiagnostics(
      logs: map['logs'] == null ? null : DiagnosticsLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      metrics: map['metrics'] == null ? null : Metrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
    );
  }
}

