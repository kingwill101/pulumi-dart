// ignore_for_file: unused_element, unnecessary_cast

class AuthorityConfigX509ConfigKeyUsageBaseKeyUsage {
  /// The key may be used to sign certificates.
  final bool? certSign;

  /// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  final bool? contentCommitment;

  /// The key may be used sign certificate revocation lists.
  final bool? crlSign;

  /// The key may be used to encipher data.
  final bool? dataEncipherment;

  /// The key may be used to decipher only.
  final bool? decipherOnly;

  /// The key may be used for digital signatures.
  final bool? digitalSignature;

  /// The key may be used to encipher only.
  final bool? encipherOnly;

  /// The key may be used in a key agreement protocol.
  final bool? keyAgreement;

  /// The key may be used to encipher other keys.
  final bool? keyEncipherment;

  /// Creates a new [AuthorityConfigX509ConfigKeyUsageBaseKeyUsage].
  /// [certSign] The key may be used to sign certificates.
  /// [contentCommitment] The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  /// [crlSign] The key may be used sign certificate revocation lists.
  /// [dataEncipherment] The key may be used to encipher data.
  /// [decipherOnly] The key may be used to decipher only.
  /// [digitalSignature] The key may be used for digital signatures.
  /// [encipherOnly] The key may be used to encipher only.
  /// [keyAgreement] The key may be used in a key agreement protocol.
  /// [keyEncipherment] The key may be used to encipher other keys.
  AuthorityConfigX509ConfigKeyUsageBaseKeyUsage({
    this.certSign,
    this.contentCommitment,
    this.crlSign,
    this.dataEncipherment,
    this.decipherOnly,
    this.digitalSignature,
    this.encipherOnly,
    this.keyAgreement,
    this.keyEncipherment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certSign': ?certSign,
      'contentCommitment': ?contentCommitment,
      'crlSign': ?crlSign,
      'dataEncipherment': ?dataEncipherment,
      'decipherOnly': ?decipherOnly,
      'digitalSignature': ?digitalSignature,
      'encipherOnly': ?encipherOnly,
      'keyAgreement': ?keyAgreement,
      'keyEncipherment': ?keyEncipherment,
    };
  }

  factory AuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorityConfigX509ConfigKeyUsageBaseKeyUsage(
      certSign: map['certSign'] == null ? null : map['certSign'] as bool,
      contentCommitment: map['contentCommitment'] == null
          ? null
          : map['contentCommitment'] as bool,
      crlSign: map['crlSign'] == null ? null : map['crlSign'] as bool,
      dataEncipherment: map['dataEncipherment'] == null
          ? null
          : map['dataEncipherment'] as bool,
      decipherOnly: map['decipherOnly'] == null
          ? null
          : map['decipherOnly'] as bool,
      digitalSignature: map['digitalSignature'] == null
          ? null
          : map['digitalSignature'] as bool,
      encipherOnly: map['encipherOnly'] == null
          ? null
          : map['encipherOnly'] as bool,
      keyAgreement: map['keyAgreement'] == null
          ? null
          : map['keyAgreement'] as bool,
      keyEncipherment: map['keyEncipherment'] == null
          ? null
          : map['keyEncipherment'] as bool,
    );
  }
}
