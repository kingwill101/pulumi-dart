// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_logs_response.dart';
import 'metrics_response.dart';

/// DataflowProfile Diagnostics properties
class ProfileDiagnosticsResponse {
  /// Diagnostic log settings for the resource.
  final DiagnosticsLogsResponse? logs;
  /// The metrics settings for the resource.
  final MetricsResponse? metrics;

  /// Creates a new [ProfileDiagnosticsResponse].
  /// [logs] Diagnostic log settings for the resource.
  /// [metrics] The metrics settings for the resource.
  ProfileDiagnosticsResponse({
    this.logs,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs == null ? null : logs!.toMap(),
      'metrics': ?metrics == null ? null : metrics!.toMap(),
    };
  }

  factory ProfileDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return ProfileDiagnosticsResponse(
      logs: map['logs'] == null ? null : DiagnosticsLogsResponse.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      metrics: map['metrics'] == null ? null : MetricsResponse.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
    );
  }
}

