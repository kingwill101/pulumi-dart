// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Manual TLS server certificate management through a defined secret
class ManualCertMethodResponse {
  /// secret containing TLS cert.
  final pulumi.Input<String> secretName;

  /// namespace of secret; omit to use default namespace.
  final pulumi.Input<String>? secretNamespace;

  /// Creates a new [ManualCertMethodResponse].
  /// [secretName] secret containing TLS cert.
  /// [secretNamespace] namespace of secret; omit to use default namespace.
  ManualCertMethodResponse({required this.secretName, this.secretNamespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'secretNamespace': ?secretNamespace,
    };
  }

  factory ManualCertMethodResponse.fromMap(Map<String, dynamic> map) {
    return ManualCertMethodResponse(
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretNamespace: (() {
        final guardedValue = map['secretNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
