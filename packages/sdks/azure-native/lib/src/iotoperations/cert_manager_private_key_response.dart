// ignore_for_file: unused_element, unnecessary_cast


/// Cert Manager private key properties
class CertManagerPrivateKeyResponse {
  /// algorithm for private key.
  final String algorithm;
  /// cert-manager private key rotationPolicy.
  final String rotationPolicy;

  /// Creates a new [CertManagerPrivateKeyResponse].
  /// [algorithm] algorithm for private key.
  /// [rotationPolicy] cert-manager private key rotationPolicy.
  CertManagerPrivateKeyResponse({
    required this.algorithm,
    required this.rotationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'rotationPolicy': rotationPolicy,
    };
  }

  factory CertManagerPrivateKeyResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerPrivateKeyResponse(
      algorithm: map['algorithm'] as String,
      rotationPolicy: map['rotationPolicy'] as String,
    );
  }
}

