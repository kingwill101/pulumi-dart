// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert Manager private key properties
class CertManagerPrivateKey {
  /// algorithm for private key.
  final pulumi.Input<String> algorithm;

  /// cert-manager rotationPolicy.
  final pulumi.Input<String> rotationPolicy;

  /// size of private key.
  final pulumi.Input<int> size;

  /// Creates a new [CertManagerPrivateKey].
  /// [algorithm] algorithm for private key.
  /// [rotationPolicy] cert-manager rotationPolicy.
  /// [size] size of private key.
  CertManagerPrivateKey({
    required this.algorithm,
    required this.rotationPolicy,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'rotationPolicy': rotationPolicy,
      'size': size,
    };
  }

  factory CertManagerPrivateKey.fromMap(Map<String, dynamic> map) {
    return CertManagerPrivateKey(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      rotationPolicy: pulumi.Input.fromValue(map['rotationPolicy'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
