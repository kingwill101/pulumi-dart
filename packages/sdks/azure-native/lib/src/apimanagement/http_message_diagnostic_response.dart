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
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BodyDiagnosticSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataMasking: (() { final guardedValue = map['dataMasking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataMaskingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

