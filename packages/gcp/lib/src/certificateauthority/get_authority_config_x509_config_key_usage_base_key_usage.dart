// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage {
  /// The key may be used to sign certificates.
  final bool certSign;

  /// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  final bool contentCommitment;

  /// The key may be used sign certificate revocation lists.
  final bool crlSign;

  /// The key may be used to encipher data.
  final bool dataEncipherment;

  /// The key may be used to decipher only.
  final bool decipherOnly;

  /// The key may be used for digital signatures.
  final bool digitalSignature;

  /// The key may be used to encipher only.
  final bool encipherOnly;

  /// The key may be used in a key agreement protocol.
  final bool keyAgreement;

  /// The key may be used to encipher other keys.
  final bool keyEncipherment;

  /// Creates a new [GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage].
  /// [certSign] The key may be used to sign certificates.
  /// [contentCommitment] The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  /// [crlSign] The key may be used sign certificate revocation lists.
  /// [dataEncipherment] The key may be used to encipher data.
  /// [decipherOnly] The key may be used to decipher only.
  /// [digitalSignature] The key may be used for digital signatures.
  /// [encipherOnly] The key may be used to encipher only.
  /// [keyAgreement] The key may be used in a key agreement protocol.
  /// [keyEncipherment] The key may be used to encipher other keys.
  GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage({
    required this.certSign,
    required this.contentCommitment,
    required this.crlSign,
    required this.dataEncipherment,
    required this.decipherOnly,
    required this.digitalSignature,
    required this.encipherOnly,
    required this.keyAgreement,
    required this.keyEncipherment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certSign'] = certSign;
    map['contentCommitment'] = contentCommitment;
    map['crlSign'] = crlSign;
    map['dataEncipherment'] = dataEncipherment;
    map['decipherOnly'] = decipherOnly;
    map['digitalSignature'] = digitalSignature;
    map['encipherOnly'] = encipherOnly;
    map['keyAgreement'] = keyAgreement;
    map['keyEncipherment'] = keyEncipherment;
    return map;
  }

  factory GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage(
      certSign: map['certSign'] as bool,
      contentCommitment: map['contentCommitment'] as bool,
      crlSign: map['crlSign'] as bool,
      dataEncipherment: map['dataEncipherment'] as bool,
      decipherOnly: map['decipherOnly'] as bool,
      digitalSignature: map['digitalSignature'] as bool,
      encipherOnly: map['encipherOnly'] as bool,
      keyAgreement: map['keyAgreement'] as bool,
      keyEncipherment: map['keyEncipherment'] as bool,
    );
  }
}
