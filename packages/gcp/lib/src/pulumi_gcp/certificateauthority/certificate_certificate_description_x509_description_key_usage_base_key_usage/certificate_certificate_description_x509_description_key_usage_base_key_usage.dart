// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage {
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

  CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage({
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
    final map = <String, dynamic>{};
    final certSignValue = certSign;
    if (certSignValue != null) {
      map['certSign'] = certSignValue;
    }
    final contentCommitmentValue = contentCommitment;
    if (contentCommitmentValue != null) {
      map['contentCommitment'] = contentCommitmentValue;
    }
    final crlSignValue = crlSign;
    if (crlSignValue != null) {
      map['crlSign'] = crlSignValue;
    }
    final dataEnciphermentValue = dataEncipherment;
    if (dataEnciphermentValue != null) {
      map['dataEncipherment'] = dataEnciphermentValue;
    }
    final decipherOnlyValue = decipherOnly;
    if (decipherOnlyValue != null) {
      map['decipherOnly'] = decipherOnlyValue;
    }
    final digitalSignatureValue = digitalSignature;
    if (digitalSignatureValue != null) {
      map['digitalSignature'] = digitalSignatureValue;
    }
    final encipherOnlyValue = encipherOnly;
    if (encipherOnlyValue != null) {
      map['encipherOnly'] = encipherOnlyValue;
    }
    final keyAgreementValue = keyAgreement;
    if (keyAgreementValue != null) {
      map['keyAgreement'] = keyAgreementValue;
    }
    final keyEnciphermentValue = keyEncipherment;
    if (keyEnciphermentValue != null) {
      map['keyEncipherment'] = keyEnciphermentValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage(
      certSign: map['certSign'] == null ? null : map['certSign'] as bool,
      contentCommitment: map['contentCommitment'] == null
          ? null
          : map['contentCommitment'] as bool,
      crlSign: map['crlSign'] == null ? null : map['crlSign'] as bool,
      dataEncipherment: map['dataEncipherment'] == null
          ? null
          : map['dataEncipherment'] as bool,
      decipherOnly:
          map['decipherOnly'] == null ? null : map['decipherOnly'] as bool,
      digitalSignature: map['digitalSignature'] == null
          ? null
          : map['digitalSignature'] as bool,
      encipherOnly:
          map['encipherOnly'] == null ? null : map['encipherOnly'] as bool,
      keyAgreement:
          map['keyAgreement'] == null ? null : map['keyAgreement'] as bool,
      keyEncipherment: map['keyEncipherment'] == null
          ? null
          : map['keyEncipherment'] as bool,
    );
  }
}
