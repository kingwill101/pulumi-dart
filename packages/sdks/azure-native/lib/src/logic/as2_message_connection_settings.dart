// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement message connection settings.
class AS2MessageConnectionSettings {
  /// The value indicating whether to ignore mismatch in certificate name.
  final bool ignoreCertificateNameMismatch;
  /// The value indicating whether to keep the connection alive.
  final bool keepHttpConnectionAlive;
  /// The value indicating whether to support HTTP status code 'CONTINUE'.
  final bool supportHttpStatusCodeContinue;
  /// The value indicating whether to unfold the HTTP headers.
  final bool unfoldHttpHeaders;

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
      ignoreCertificateNameMismatch: map['ignoreCertificateNameMismatch'] as bool,
      keepHttpConnectionAlive: map['keepHttpConnectionAlive'] as bool,
      supportHttpStatusCodeContinue: map['supportHttpStatusCodeContinue'] as bool,
      unfoldHttpHeaders: map['unfoldHttpHeaders'] as bool,
    );
  }
}

