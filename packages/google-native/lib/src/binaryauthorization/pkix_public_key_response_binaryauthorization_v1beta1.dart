// ignore_for_file: unused_element, unnecessary_cast

/// A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKeyResponseBinaryauthorizationV1beta1 {
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final String publicKeyPem;

  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final String signatureAlgorithm;

  /// Creates a new [PkixPublicKeyResponseBinaryauthorizationV1beta1].
  /// [publicKeyPem] A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  /// [signatureAlgorithm] The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  PkixPublicKeyResponseBinaryauthorizationV1beta1({
    required this.publicKeyPem,
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': publicKeyPem,
      'signatureAlgorithm': signatureAlgorithm,
    };
  }

  factory PkixPublicKeyResponseBinaryauthorizationV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PkixPublicKeyResponseBinaryauthorizationV1beta1(
      publicKeyPem: map['publicKeyPem'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] as String,
    );
  }
}
