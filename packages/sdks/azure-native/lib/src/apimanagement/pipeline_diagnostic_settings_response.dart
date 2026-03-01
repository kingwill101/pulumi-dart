// ignore_for_file: unused_element, unnecessary_cast

import 'http_message_diagnostic_response.dart';

/// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
class PipelineDiagnosticSettingsResponse {
  /// Diagnostic settings for request.
  final HttpMessageDiagnosticResponse? request;
  /// Diagnostic settings for response.
  final HttpMessageDiagnosticResponse? response;

  /// Creates a new [PipelineDiagnosticSettingsResponse].
  /// [request] Diagnostic settings for request.
  /// [response] Diagnostic settings for response.
  PipelineDiagnosticSettingsResponse({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?request == null ? null : request!.toMap(),
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory PipelineDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PipelineDiagnosticSettingsResponse(
      request: map['request'] == null ? null : HttpMessageDiagnosticResponse.fromMap((map['request'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : HttpMessageDiagnosticResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

