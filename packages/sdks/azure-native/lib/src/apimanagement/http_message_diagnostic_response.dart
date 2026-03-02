// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'body_diagnostic_settings_response.dart';
import 'data_masking_response.dart';

/// Http message diagnostic settings.
class HttpMessageDiagnosticResponse {
  /// Body logging settings.
  final pulumi.Input<BodyDiagnosticSettingsResponse>? body;
  /// Data masking settings.
  final pulumi.Input<DataMaskingResponse>? dataMasking;
  /// Array of HTTP Headers to log.
  final pulumi.Input<List<String>>? headers;

  /// Creates a new [HttpMessageDiagnosticResponse].
  /// [body] Body logging settings.
  /// [dataMasking] Data masking settings.
  /// [headers] Array of HTTP Headers to log.
  HttpMessageDiagnosticResponse({
    this.body,
    this.dataMasking,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?pulumi.Input.mapOptionalInputValue<BodyDiagnosticSettingsResponse, Map<String, dynamic>>(body, (value) => value.toMap()),
      'dataMasking': ?pulumi.Input.mapOptionalInputValue<DataMaskingResponse, Map<String, dynamic>>(dataMasking, (value) => value.toMap()),
      'headers': ?headers,
    };
  }

  factory HttpMessageDiagnosticResponse.fromMap(Map<String, dynamic> map) {
    return HttpMessageDiagnosticResponse(
      body: map['body'] == null ? null : (BodyDiagnosticSettingsResponse.fromMap((map['body']! as Map).cast<String, dynamic>())).input(),
      dataMasking: map['dataMasking'] == null ? null : (DataMaskingResponse.fromMap((map['dataMasking']! as Map).cast<String, dynamic>())).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as List).cast<String>()).input(),
    );
  }
}

