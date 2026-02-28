// ignore_for_file: unused_element, unnecessary_cast


class AttestorAttestationAuthorityNotePublicKeyPkixPublicKey {
  /// A PEM-encoded public key, as described in
  /// `https://tools.ietf.org/html/rfc7468#section-13`
  final String? publicKeyPem;
  /// The signature algorithm used to verify a message against
  /// a signature using this key. These signature algorithm must
  /// match the structure and any object identifiers encoded in
  /// publicKeyPem (i.e. this algorithm must match that of the
  /// public key).
  final String? signatureAlgorithm;

  /// Creates a new [AttestorAttestationAuthorityNotePublicKeyPkixPublicKey].
  /// [publicKeyPem] A PEM-encoded public key, as described in
  /// [signatureAlgorithm] The signature algorithm used to verify a message against
  AttestorAttestationAuthorityNotePublicKeyPkixPublicKey({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyPem': ?publicKeyPem,
      'signatureAlgorithm': ?signatureAlgorithm,
    };
  }

  factory AttestorAttestationAuthorityNotePublicKeyPkixPublicKey.fromMap(Map<String, dynamic> map) {
    return AttestorAttestationAuthorityNotePublicKeyPkixPublicKey(
      publicKeyPem: map['publicKeyPem'] == null ? null : map['publicKeyPem'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] == null ? null : map['signatureAlgorithm'] as String,
    );
  }
}

