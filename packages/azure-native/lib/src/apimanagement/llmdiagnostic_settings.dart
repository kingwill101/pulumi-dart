// ignore_for_file: unused_element, unnecessary_cast

import 'llmmessage_diagnostic_settings.dart';

/// Diagnostic settings for Large Language Models
class LLMDiagnosticSettings {
  /// Specifies whether default diagnostic should be enabled for Large Language Models or not.
  final String? logs;
  /// Diagnostic settings for Large Language Models requests.
  final LLMMessageDiagnosticSettings? requests;
  /// Diagnostic settings for Large Language Models responses.
  final LLMMessageDiagnosticSettings? responses;

  /// Creates a new [LLMDiagnosticSettings].
  /// [logs] Specifies whether default diagnostic should be enabled for Large Language Models or not.
  /// [requests] Diagnostic settings for Large Language Models requests.
  /// [responses] Diagnostic settings for Large Language Models responses.
  LLMDiagnosticSettings({
    this.logs,
    this.requests,
    this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
      'requests': ?requests == null ? null : requests!.toMap(),
      'responses': ?responses == null ? null : responses!.toMap(),
    };
  }

  factory LLMDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return LLMDiagnosticSettings(
      logs: map['logs'] == null ? null : map['logs'] as String,
      requests: map['requests'] == null ? null : LLMMessageDiagnosticSettings.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      responses: map['responses'] == null ? null : LLMMessageDiagnosticSettings.fromMap((map['responses'] as Map).cast<String, dynamic>()),
    );
  }
}

