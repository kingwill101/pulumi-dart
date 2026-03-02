// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Body logging settings.
class BodyDiagnosticSettingsResponse {
  /// Number of request body bytes to log.
  final pulumi.Input<int>? bytes;

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
      bytes: map['bytes'] == null ? null : (map['bytes']! as int).input(),
    );
  }
}

