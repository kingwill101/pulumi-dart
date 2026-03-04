// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for mutual TLS authentication
class Mtls {
  /// Boolean indicating whether the mutual TLS authentication is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [Mtls].
  /// [enabled] Boolean indicating whether the mutual TLS authentication is enabled
  Mtls({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory Mtls.fromMap(Map<String, dynamic> map) {
    return Mtls(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
