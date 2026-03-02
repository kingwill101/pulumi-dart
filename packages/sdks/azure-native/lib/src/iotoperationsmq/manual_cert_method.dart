// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Manual TLS server certificate management through a defined secret
class ManualCertMethod {
  /// secret containing TLS cert.
  final pulumi.Input<String> secretName;
  /// namespace of secret; omit to use default namespace.
  final pulumi.Input<String>? secretNamespace;

  /// Creates a new [ManualCertMethod].
  /// [secretName] secret containing TLS cert.
  /// [secretNamespace] namespace of secret; omit to use default namespace.
  ManualCertMethod({
    required this.secretName,
    this.secretNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'secretNamespace': ?secretNamespace,
    };
  }

  factory ManualCertMethod.fromMap(Map<String, dynamic> map) {
    return ManualCertMethod(
      secretName: (map['secretName'] as String).input(),
      secretNamespace: map['secretNamespace'] == null ? null : (map['secretNamespace'] as String).input(),
    );
  }
}

