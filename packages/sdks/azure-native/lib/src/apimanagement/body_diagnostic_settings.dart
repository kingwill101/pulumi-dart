// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Body logging settings.
class BodyDiagnosticSettings {
  /// Number of request body bytes to log.
  final pulumi.Input<int>? bytes;

  /// Creates a new [BodyDiagnosticSettings].
  /// [bytes] Number of request body bytes to log.
  const BodyDiagnosticSettings({
    this.bytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': ?bytes,
    };
  }

  factory BodyDiagnosticSettings.fromMap(Map<String, dynamic> map) {
    return BodyDiagnosticSettings(
      bytes: (() { final guardedValue = map['bytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
