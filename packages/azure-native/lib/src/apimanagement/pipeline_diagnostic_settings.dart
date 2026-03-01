// ignore_for_file: unused_element, unnecessary_cast

import 'http_message_diagnostic.dart';

/// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
class PipelineDiagnosticSettings {
  /// Diagnostic settings for request.
  final HttpMessageDiagnostic? request;
  /// Diagnostic settings for response.
  final HttpMessageDiagnostic? response;

  /// Creates a new [PipelineDiagnosticSettings].
  /// [request] Diagnostic settings for request.
  /// [response] Diagnostic settings for response.
  PipelineDiagnosticSettings({
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request': ?request == null ? null : request!.toMap(),
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory PipelineDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return PipelineDiagnosticSettings(
      request: map['request'] == null ? null : HttpMessageDiagnostic.fromMap((map['request'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : HttpMessageDiagnostic.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

