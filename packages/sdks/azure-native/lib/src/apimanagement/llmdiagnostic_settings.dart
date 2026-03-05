// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'llmmessage_diagnostic_settings.dart';

/// Diagnostic settings for Large Language Models
class LLMDiagnosticSettings {
  /// Specifies whether default diagnostic should be enabled for Large Language Models or not.
  final pulumi.Input<String>? logs;
  /// Diagnostic settings for Large Language Models requests.
  final pulumi.Input<LLMMessageDiagnosticSettings>? requests;
  /// Diagnostic settings for Large Language Models responses.
  final pulumi.Input<LLMMessageDiagnosticSettings>? responses;

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
      'requests': ?pulumi.Input.mapOptionalInputValue<LLMMessageDiagnosticSettings, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'responses': ?pulumi.Input.mapOptionalInputValue<LLMMessageDiagnosticSettings, Map<String, dynamic>>(responses, (value) => value.toMap()),
    };
  }

  factory LLMDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return LLMDiagnosticSettings(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LLMMessageDiagnosticSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LLMMessageDiagnosticSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

