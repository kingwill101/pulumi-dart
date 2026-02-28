// ignore_for_file: unused_element, unnecessary_cast

class KeystoresAliasesPkcs12CertsInfoCertInfo {
  /// (Output)
  /// X.509 basic constraints extension.
  final String? basicConstraints;

  /// (Output)
  /// X.509 notAfter validity period in milliseconds since epoch.
  final String? expiryDate;

  /// (Output)
  /// Flag that specifies whether the certificate is valid.
  /// Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid.
  final String? isValid;

  /// (Output)
  /// X.509 issuer.
  final String? issuer;

  /// (Output)
  /// Public key component of the X.509 subject public key info.
  final String? publicKey;

  /// (Output)
  /// X.509 serial number.
  final String? serialNumber;

  /// (Output)
  /// X.509 signatureAlgorithm.
  final String? sigAlgName;

  /// (Output)
  /// X.509 subject.
  final String? subject;

  /// (Output)
  /// X.509 subject alternative names (SANs) extension.
  final List<String>? subjectAlternativeNames;

  /// (Output)
  /// X.509 notBefore validity period in milliseconds since epoch.
  final String? validFrom;

  /// (Output)
  /// X.509 version.
  final int? version;

  /// Creates a new [KeystoresAliasesPkcs12CertsInfoCertInfo].
  /// [basicConstraints] (Output)
  /// [expiryDate] (Output)
  /// [isValid] (Output)
  /// [issuer] (Output)
  /// [publicKey] (Output)
  /// [serialNumber] (Output)
  /// [sigAlgName] (Output)
  /// [subject] (Output)
  /// [subjectAlternativeNames] (Output)
  /// [validFrom] (Output)
  /// [version] (Output)
  KeystoresAliasesPkcs12CertsInfoCertInfo({
    this.basicConstraints,
    this.expiryDate,
    this.isValid,
    this.issuer,
    this.publicKey,
    this.serialNumber,
    this.sigAlgName,
    this.subject,
    this.subjectAlternativeNames,
    this.validFrom,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicConstraintsValue = basicConstraints;
    if (basicConstraintsValue != null) {
      map['basicConstraints'] = basicConstraintsValue;
    }
    final expiryDateValue = expiryDate;
    if (expiryDateValue != null) {
      map['expiryDate'] = expiryDateValue;
    }
    final isValidValue = isValid;
    if (isValidValue != null) {
      map['isValid'] = isValidValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final publicKeyValue = publicKey;
    if (publicKeyValue != null) {
      map['publicKey'] = publicKeyValue;
    }
    final serialNumberValue = serialNumber;
    if (serialNumberValue != null) {
      map['serialNumber'] = serialNumberValue;
    }
    final sigAlgNameValue = sigAlgName;
    if (sigAlgNameValue != null) {
      map['sigAlgName'] = sigAlgNameValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    final subjectAlternativeNamesValue = subjectAlternativeNames;
    if (subjectAlternativeNamesValue != null) {
      map['subjectAlternativeNames'] = subjectAlternativeNamesValue;
    }
    final validFromValue = validFrom;
    if (validFromValue != null) {
      map['validFrom'] = validFromValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory KeystoresAliasesPkcs12CertsInfoCertInfo.fromMap(
      Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12CertsInfoCertInfo(
      basicConstraints: map['basicConstraints'] == null
          ? null
          : map['basicConstraints'] as String,
      expiryDate:
          map['expiryDate'] == null ? null : map['expiryDate'] as String,
      isValid: map['isValid'] == null ? null : map['isValid'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      serialNumber:
          map['serialNumber'] == null ? null : map['serialNumber'] as String,
      sigAlgName:
          map['sigAlgName'] == null ? null : map['sigAlgName'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : (map['subjectAlternativeNames'] as List).cast<String>(),
      validFrom: map['validFrom'] == null ? null : map['validFrom'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
