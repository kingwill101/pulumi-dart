// ignore_for_file: unused_element, unnecessary_cast


/// Body logging settings.
class BodyDiagnosticSettingsResponse {
  /// Number of request body bytes to log.
  final int? bytes;

  /// Creates a new [BodyDiagnosticSettingsResponse].
  /// [bytes] Number of request body bytes to log.
  BodyDiagnosticSettingsResponse({
    this.bytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': ?bytes,
    };
  }

  factory BodyDiagnosticSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BodyDiagnosticSettingsResponse(
      bytes: map['bytes'] == null ? null : map['bytes'] as int,
    );
  }
}

