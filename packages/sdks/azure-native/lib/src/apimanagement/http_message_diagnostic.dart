// ignore_for_file: unused_element, unnecessary_cast

import 'body_diagnostic_settings.dart';
import 'data_masking.dart';

/// Http message diagnostic settings.
class HttpMessageDiagnostic {
  /// Body logging settings.
  final BodyDiagnosticSettings? body;
  /// Data masking settings.
  final DataMasking? dataMasking;
  /// Array of HTTP Headers to log.
  final List<String>? headers;

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
      'body': ?body == null ? null : body!.toMap(),
      'dataMasking': ?dataMasking == null ? null : dataMasking!.toMap(),
      'headers': ?headers,
    };
  }

  factory HttpMessageDiagnostic.fromMap(Map<String, dynamic> map) {
    return HttpMessageDiagnostic(
      body: map['body'] == null ? null : BodyDiagnosticSettings.fromMap((map['body'] as Map).cast<String, dynamic>()),
      dataMasking: map['dataMasking'] == null ? null : DataMasking.fromMap((map['dataMasking'] as Map).cast<String, dynamic>()),
      headers: map['headers'] == null ? null : (map['headers'] as List).cast<String>(),
    );
  }
}

