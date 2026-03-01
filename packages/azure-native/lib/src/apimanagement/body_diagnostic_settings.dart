// ignore_for_file: unused_element, unnecessary_cast


/// Body logging settings.
class BodyDiagnosticSettings {
  /// Number of request body bytes to log.
  final int? bytes;

  /// Creates a new [BodyDiagnosticSettings].
  /// [bytes] Number of request body bytes to log.
  BodyDiagnosticSettings({
    this.bytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': ?bytes,
    };
  }

  factory BodyDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return BodyDiagnosticSettings(
      bytes: map['bytes'] == null ? null : map['bytes'] as int,
    );
  }
}

