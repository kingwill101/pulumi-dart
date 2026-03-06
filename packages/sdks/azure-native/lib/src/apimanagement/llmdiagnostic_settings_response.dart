// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'llmmessage_diagnostic_settings_response.dart';

/// Diagnostic settings for Large Language Models
class LLMDiagnosticSettingsResponse {
  /// Specifies whether default diagnostic should be enabled for Large Language Models or not.
  final pulumi.Input<String>? logs;
  /// Diagnostic settings for Large Language Models requests.
  final pulumi.Input<LLMMessageDiagnosticSettingsResponse>? requests;
  /// Diagnostic settings for Large Language Models responses.
  final pulumi.Input<LLMMessageDiagnosticSettingsResponse>? responses;

  /// Creates a new [LLMDiagnosticSettingsResponse].
  /// [logs] Specifies whether default diagnostic should be enabled for Large Language Models or not.
  /// [requests] Diagnostic settings for Large Language Models requests.
  /// [responses] Diagnostic settings for Large Language Models responses.
  const LLMDiagnosticSettingsResponse({
    this.logs,
    this.requests,
    this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
      'requests': ?pulumi.Input.mapOptionalInputValue<LLMMessageDiagnosticSettingsResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'responses': ?pulumi.Input.mapOptionalInputValue<LLMMessageDiagnosticSettingsResponse, Map<String, dynamic>>(responses, (value) => value.toMap()),
    };
  }

  factory LLMDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LLMDiagnosticSettingsResponse(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LLMMessageDiagnosticSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LLMMessageDiagnosticSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

