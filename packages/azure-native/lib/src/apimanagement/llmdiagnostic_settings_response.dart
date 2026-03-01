// ignore_for_file: unused_element, unnecessary_cast

import 'llmmessage_diagnostic_settings_response.dart';

/// Diagnostic settings for Large Language Models
class LLMDiagnosticSettingsResponse {
  /// Specifies whether default diagnostic should be enabled for Large Language Models or not.
  final String? logs;
  /// Diagnostic settings for Large Language Models requests.
  final LLMMessageDiagnosticSettingsResponse? requests;
  /// Diagnostic settings for Large Language Models responses.
  final LLMMessageDiagnosticSettingsResponse? responses;

  /// Creates a new [LLMDiagnosticSettingsResponse].
  /// [logs] Specifies whether default diagnostic should be enabled for Large Language Models or not.
  /// [requests] Diagnostic settings for Large Language Models requests.
  /// [responses] Diagnostic settings for Large Language Models responses.
  LLMDiagnosticSettingsResponse({
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

  factory LLMDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LLMDiagnosticSettingsResponse(
      logs: map['logs'] == null ? null : map['logs'] as String,
      requests: map['requests'] == null ? null : LLMMessageDiagnosticSettingsResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      responses: map['responses'] == null ? null : LLMMessageDiagnosticSettingsResponse.fromMap((map['responses'] as Map).cast<String, dynamic>()),
    );
  }
}

