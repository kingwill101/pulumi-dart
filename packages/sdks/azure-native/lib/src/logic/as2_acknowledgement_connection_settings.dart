// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement acknowledgement connection settings.
class AS2AcknowledgementConnectionSettings {
  /// Indicates whether to ignore mismatch in certificate name.
  final pulumi.Input<bool> ignoreCertificateNameMismatch;
  /// Indicates whether to keep the connection alive.
  final pulumi.Input<bool> keepHttpConnectionAlive;
  /// Indicates whether to support HTTP status code 'CONTINUE'.
  final pulumi.Input<bool> supportHttpStatusCodeContinue;
  /// Indicates whether to unfold the HTTP headers.
  final pulumi.Input<bool> unfoldHttpHeaders;

  /// Creates a new [AS2AcknowledgementConnectionSettings].
  /// [ignoreCertificateNameMismatch] Indicates whether to ignore mismatch in certificate name.
  /// [keepHttpConnectionAlive] Indicates whether to keep the connection alive.
  /// [supportHttpStatusCodeContinue] Indicates whether to support HTTP status code 'CONTINUE'.
  /// [unfoldHttpHeaders] Indicates whether to unfold the HTTP headers.
  AS2AcknowledgementConnectionSettings({
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

  factory AS2AcknowledgementConnectionSettings.fromMap(Map<String, dynamic> map) {
    return AS2AcknowledgementConnectionSettings(
      ignoreCertificateNameMismatch: (map['ignoreCertificateNameMismatch'] as bool).input(),
      keepHttpConnectionAlive: (map['keepHttpConnectionAlive'] as bool).input(),
      supportHttpStatusCodeContinue: (map['supportHttpStatusCodeContinue'] as bool).input(),
      unfoldHttpHeaders: (map['unfoldHttpHeaders'] as bool).input(),
    );
  }
}

