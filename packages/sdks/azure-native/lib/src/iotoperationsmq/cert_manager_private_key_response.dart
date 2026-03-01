// ignore_for_file: unused_element, unnecessary_cast


/// Cert Manager private key properties
class CertManagerPrivateKeyResponse {
  /// algorithm for private key.
  final String algorithm;
  /// cert-manager rotationPolicy.
  final String rotationPolicy;
  /// size of private key.
  final int size;

  /// Creates a new [CertManagerPrivateKeyResponse].
  /// [algorithm] algorithm for private key.
  /// [rotationPolicy] cert-manager rotationPolicy.
  /// [size] size of private key.
  CertManagerPrivateKeyResponse({
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

  factory CertManagerPrivateKeyResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerPrivateKeyResponse(
      algorithm: map['algorithm'] as String,
      rotationPolicy: map['rotationPolicy'] as String,
      size: map['size'] as int,
    );
  }
}

