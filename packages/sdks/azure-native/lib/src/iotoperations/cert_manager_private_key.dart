// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert Manager private key properties
class CertManagerPrivateKey {
  /// algorithm for private key.
  final pulumi.Input<dynamic> algorithm;
  /// cert-manager private key rotationPolicy.
  final pulumi.Input<dynamic> rotationPolicy;

  /// Creates a new [CertManagerPrivateKey].
  /// [algorithm] algorithm for private key.
  /// [rotationPolicy] cert-manager private key rotationPolicy.
  const CertManagerPrivateKey({
    required this.algorithm,
    required this.rotationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'rotationPolicy': rotationPolicy,
    };
  }

  factory CertManagerPrivateKey.fromMap(Map<String, dynamic> map) {
    return CertManagerPrivateKey(
      algorithm: pulumi.Input.fromValue(map['algorithm']),
      rotationPolicy: pulumi.Input.fromValue(map['rotationPolicy']),
    );
  }
}
