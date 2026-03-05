// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement acknowledgement connection settings.
class AS2AcknowledgementConnectionSettingsResponse {
  /// Indicates whether to ignore mismatch in certificate name.
  final pulumi.Input<bool> ignoreCertificateNameMismatch;
  /// Indicates whether to keep the connection alive.
  final pulumi.Input<bool> keepHttpConnectionAlive;
  /// Indicates whether to support HTTP status code 'CONTINUE'.
  final pulumi.Input<bool> supportHttpStatusCodeContinue;
  /// Indicates whether to unfold the HTTP headers.
  final pulumi.Input<bool> unfoldHttpHeaders;

  /// Creates a new [AS2AcknowledgementConnectionSettingsResponse].
  /// [ignoreCertificateNameMismatch] Indicates whether to ignore mismatch in certificate name.
  /// [keepHttpConnectionAlive] Indicates whether to keep the connection alive.
  /// [supportHttpStatusCodeContinue] Indicates whether to support HTTP status code 'CONTINUE'.
  /// [unfoldHttpHeaders] Indicates whether to unfold the HTTP headers.
  AS2AcknowledgementConnectionSettingsResponse({
    required this.ignoreCertificateNameMismatch,
    required this.keepHttpConnectionAlive,
    required this.supportHttpStatusCodeContinue,
    required this.unfoldHttpHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCertificateNameMismatch': ignoreCertificateNameMismatch,
      'keepHttpConnectionAlive': keepHttpConnectionAlive,
      'supportHttpStatusCodeContinue': supportHttpStatusCodeContinue,
      'unfoldHttpHeaders': unfoldHttpHeaders,
    };
  }

  factory AS2AcknowledgementConnectionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2AcknowledgementConnectionSettingsResponse(
      ignoreCertificateNameMismatch: pulumi.Input.fromValue(map['ignoreCertificateNameMismatch'] as bool),
      keepHttpConnectionAlive: pulumi.Input.fromValue(map['keepHttpConnectionAlive'] as bool),
      supportHttpStatusCodeContinue: pulumi.Input.fromValue(map['supportHttpStatusCodeContinue'] as bool),
      unfoldHttpHeaders: pulumi.Input.fromValue(map['unfoldHttpHeaders'] as bool),
    );
  }
}

