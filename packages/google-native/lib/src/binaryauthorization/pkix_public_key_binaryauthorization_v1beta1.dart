// ignore_for_file: unused_element, unnecessary_cast

import 'pkix_public_key_signature_algorithm_binaryauthorization_v1beta1.dart';

/// A public key in the PkixPublicKey format (see https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
class PkixPublicKeyBinaryauthorizationV1beta1 {
  /// A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  final String? publicKeyPem;

  /// The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  final PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1?
  signatureAlgorithm;

  /// Creates a new [PkixPublicKeyBinaryauthorizationV1beta1].
  /// [publicKeyPem] A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13
  /// [signatureAlgorithm] The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in `public_key_pem` (i.e. this algorithm must match that of the public key).
  PkixPublicKeyBinaryauthorizationV1beta1({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': ?publicKeyPem,
      'signatureAlgorithm': ?signatureAlgorithm == null
          ? null
          : signatureAlgorithm!.value,
    };
  }

  factory PkixPublicKeyBinaryauthorizationV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PkixPublicKeyBinaryauthorizationV1beta1(
      publicKeyPem: map['publicKeyPem'] == null
          ? null
          : map['publicKeyPem'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] == null
          ? null
          : PkixPublicKeySignatureAlgorithmBinaryauthorizationV1beta1.fromValue(
              map['signatureAlgorithm'] as String,
            ),
    );
  }
}
