// ignore_for_file: unused_element, unnecessary_cast

import 'pkix_public_key_signature_algorithm2.dart';

/// A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKey2 {
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final String? publicKeyPem;

  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final PkixPublicKeySignatureAlgorithm2? signatureAlgorithm;

  PkixPublicKey2({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicKeyPemValue = publicKeyPem;
    if (publicKeyPemValue != null) {
      map['publicKeyPem'] = publicKeyPemValue;
    }
    final signatureAlgorithmValue = signatureAlgorithm;
    if (signatureAlgorithmValue != null) {
      map['signatureAlgorithm'] = signatureAlgorithmValue.value;
    }
    return map;
  }

  factory PkixPublicKey2.fromMap(Map<String, dynamic> map) {
    return PkixPublicKey2(
      publicKeyPem:
          map['publicKeyPem'] == null ? null : map['publicKeyPem'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] == null
          ? null
          : PkixPublicKeySignatureAlgorithm2.fromValue(
              map['signatureAlgorithm'] as String),
    );
  }
}
