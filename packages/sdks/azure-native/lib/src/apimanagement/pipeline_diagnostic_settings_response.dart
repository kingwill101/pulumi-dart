// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_message_diagnostic_response.dart';

/// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
class PipelineDiagnosticSettingsResponse {
  /// Diagnostic settings for request.
  final pulumi.Input<HttpMessageDiagnosticResponse>? request;
  /// Diagnostic settings for response.
  final pulumi.Input<HttpMessageDiagnosticResponse>? response;

  /// Creates a new [PipelineDiagnosticSettingsResponse].
  /// [request] Diagnostic settings for request.
  /// [response] Diagnostic settings for response.
  const PipelineDiagnosticSettingsResponse({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?pulumi.Input.mapOptionalInputValue<HttpMessageDiagnosticResponse, Map<String, dynamic>>(request, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<HttpMessageDiagnosticResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory PipelineDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PipelineDiagnosticSettingsResponse(
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpMessageDiagnosticResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpMessageDiagnosticResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

