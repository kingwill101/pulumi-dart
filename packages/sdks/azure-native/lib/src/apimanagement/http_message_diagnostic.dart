// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'body_diagnostic_settings.dart';
import 'data_masking.dart';

/// Http message diagnostic settings.
class HttpMessageDiagnostic {
  /// Body logging settings.
  final pulumi.Input<BodyDiagnosticSettings>? body;
  /// Data masking settings.
  final pulumi.Input<DataMasking>? dataMasking;
  /// Array of HTTP Headers to log.
  final pulumi.Input<List<String>>? headers;

  /// Creates a new [HttpMessageDiagnostic].
  /// [body] Body logging settings.
  /// [dataMasking] Data masking settings.
  /// [headers] Array of HTTP Headers to log.
  HttpMessageDiagnostic({
    this.body,
    this.dataMasking,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?pulumi.Input.mapOptionalInputValue<BodyDiagnosticSettings, Map<String, dynamic>>(body, (value) => value.toMap()),
      'dataMasking': ?pulumi.Input.mapOptionalInputValue<DataMasking, Map<String, dynamic>>(dataMasking, (value) => value.toMap()),
      'headers': ?headers,
    };
  }

  factory HttpMessageDiagnostic.fromMap(Map<String, dynamic> map) {
    return HttpMessageDiagnostic(
      body: map['body'] == null ? null : (BodyDiagnosticSettings.fromMap((map['body']! as Map).cast<String, dynamic>())).input(),
      dataMasking: map['dataMasking'] == null ? null : (DataMasking.fromMap((map['dataMasking']! as Map).cast<String, dynamic>())).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as List).cast<String>()).input(),
    );
  }
}

