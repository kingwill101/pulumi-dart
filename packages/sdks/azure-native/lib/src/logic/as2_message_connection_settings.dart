// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement message connection settings.
class AS2MessageConnectionSettings {
  /// The value indicating whether to ignore mismatch in certificate name.
  final pulumi.Input<bool> ignoreCertificateNameMismatch;
  /// The value indicating whether to keep the connection alive.
  final pulumi.Input<bool> keepHttpConnectionAlive;
  /// The value indicating whether to support HTTP status code 'CONTINUE'.
  final pulumi.Input<bool> supportHttpStatusCodeContinue;
  /// The value indicating whether to unfold the HTTP headers.
  final pulumi.Input<bool> unfoldHttpHeaders;

  /// Creates a new [AS2MessageConnectionSettings].
  /// [ignoreCertificateNameMismatch] The value indicating whether to ignore mismatch in certificate name.
  /// [keepHttpConnectionAlive] The value indicating whether to keep the connection alive.
  /// [supportHttpStatusCodeContinue] The value indicating whether to support HTTP status code 'CONTINUE'.
  /// [unfoldHttpHeaders] The value indicating whether to unfold the HTTP headers.
  AS2MessageConnectionSettings({
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

  factory AS2MessageConnectionSettings.fromMap(Map<String, dynamic> map) {
    return AS2MessageConnectionSettings(
      ignoreCertificateNameMismatch: pulumi.Input.fromValue(map['ignoreCertificateNameMismatch'] as bool),
      keepHttpConnectionAlive: pulumi.Input.fromValue(map['keepHttpConnectionAlive'] as bool),
      supportHttpStatusCodeContinue: pulumi.Input.fromValue(map['supportHttpStatusCodeContinue'] as bool),
      unfoldHttpHeaders: pulumi.Input.fromValue(map['unfoldHttpHeaders'] as bool),
    );
  }
}

