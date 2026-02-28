// ignore_for_file: unused_element, unnecessary_cast

/// X.509 certificate as defined in RFC 5280.
class GoogleCloudApigeeV1CertInfoResponse {
  /// X.509 basic constraints extension.
  final String basicConstraints;

  /// X.509 `notAfter` validity period in milliseconds since epoch.
  final String expiryDate;

  /// Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is valid, `No` if expired, or `Not yet` if not yet valid.
  final String isValid;

  /// X.509 issuer.
  final String issuer;

  /// Public key component of the X.509 subject public key info.
  final String publicKey;

  /// X.509 serial number.
  final String serialNumber;

  /// X.509 signatureAlgorithm.
  final String sigAlgName;

  /// X.509 subject.
  final String subject;

  /// X.509 subject alternative names (SANs) extension.
  final List<String> subjectAlternativeNames;

  /// X.509 `notBefore` validity period in milliseconds since epoch.
  final String validFrom;

  /// X.509 version.
  final int version;

  /// Creates a new [GoogleCloudApigeeV1CertInfoResponse].
  /// [basicConstraints] X.509 basic constraints extension.
  /// [expiryDate] X.509 `notAfter` validity period in milliseconds since epoch.
  /// [isValid] Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is valid, `No` if expired, or `Not yet` if not yet valid.
  /// [issuer] X.509 issuer.
  /// [publicKey] Public key component of the X.509 subject public key info.
  /// [serialNumber] X.509 serial number.
  /// [sigAlgName] X.509 signatureAlgorithm.
  /// [subject] X.509 subject.
  /// [subjectAlternativeNames] X.509 subject alternative names (SANs) extension.
  /// [validFrom] X.509 `notBefore` validity period in milliseconds since epoch.
  /// [version] X.509 version.
  GoogleCloudApigeeV1CertInfoResponse({
    required this.basicConstraints,
    required this.expiryDate,
    required this.isValid,
    required this.issuer,
    required this.publicKey,
    required this.serialNumber,
    required this.sigAlgName,
    required this.subject,
    required this.subjectAlternativeNames,
    required this.validFrom,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicConstraints'] = basicConstraints;
    map['expiryDate'] = expiryDate;
    map['isValid'] = isValid;
    map['issuer'] = issuer;
    map['publicKey'] = publicKey;
    map['serialNumber'] = serialNumber;
    map['sigAlgName'] = sigAlgName;
    map['subject'] = subject;
    map['subjectAlternativeNames'] = subjectAlternativeNames;
    map['validFrom'] = validFrom;
    map['version'] = version;
    return map;
  }

  factory GoogleCloudApigeeV1CertInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CertInfoResponse(
      basicConstraints: map['basicConstraints'] as String,
      expiryDate: map['expiryDate'] as String,
      isValid: map['isValid'] as String,
      issuer: map['issuer'] as String,
      publicKey: map['publicKey'] as String,
      serialNumber: map['serialNumber'] as String,
      sigAlgName: map['sigAlgName'] as String,
      subject: map['subject'] as String,
      subjectAlternativeNames:
          (map['subjectAlternativeNames'] as List).cast<String>(),
      validFrom: map['validFrom'] as String,
      version: map['version'] as int,
    );
  }
}
