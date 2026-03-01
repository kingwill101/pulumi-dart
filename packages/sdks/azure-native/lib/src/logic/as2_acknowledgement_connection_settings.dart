// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement acknowledgement connection settings.
class AS2AcknowledgementConnectionSettings {
  /// Indicates whether to ignore mismatch in certificate name.
  final bool ignoreCertificateNameMismatch;
  /// Indicates whether to keep the connection alive.
  final bool keepHttpConnectionAlive;
  /// Indicates whether to support HTTP status code 'CONTINUE'.
  final bool supportHttpStatusCodeContinue;
  /// Indicates whether to unfold the HTTP headers.
  final bool unfoldHttpHeaders;

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
      ignoreCertificateNameMismatch: map['ignoreCertificateNameMismatch'] as bool,
      keepHttpConnectionAlive: map['keepHttpConnectionAlive'] as bool,
      supportHttpStatusCodeContinue: map['supportHttpStatusCodeContinue'] as bool,
      unfoldHttpHeaders: map['unfoldHttpHeaders'] as bool,
    );
  }
}

