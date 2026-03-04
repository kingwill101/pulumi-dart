// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_message_diagnostic.dart';

/// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
class PipelineDiagnosticSettings {
  /// Diagnostic settings for request.
  final pulumi.Input<HttpMessageDiagnostic>? request;

  /// Diagnostic settings for response.
  final pulumi.Input<HttpMessageDiagnostic>? response;

  /// Creates a new [PipelineDiagnosticSettings].
  /// [request] Diagnostic settings for request.
  /// [response] Diagnostic settings for response.
  PipelineDiagnosticSettings({this.request, this.response});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'request':
          ?pulumi.Input.mapOptionalInputValue<
            HttpMessageDiagnostic,
            Map<String, dynamic>
          >(request, (value) => value.toMap()),
      'response':
          ?pulumi.Input.mapOptionalInputValue<
            HttpMessageDiagnostic,
            Map<String, dynamic>
          >(response, (value) => value.toMap()),
    };
  }

  factory PipelineDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return PipelineDiagnosticSettings(
      request: (() {
        final guardedValue = map['request'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpMessageDiagnostic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      response: (() {
        final guardedValue = map['response'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpMessageDiagnostic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
