// ignore_for_file: unused_element, unnecessary_cast

class KeystoresAliasesSelfSignedCertCertsInfoCertInfo {
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

  /// Subject details.
  /// Structure is documented below.
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

  /// Creates a new [KeystoresAliasesSelfSignedCertCertsInfoCertInfo].
  /// [basicConstraints] (Output)
  /// [expiryDate] (Output)
  /// [isValid] (Output)
  /// [issuer] (Output)
  /// [publicKey] (Output)
  /// [serialNumber] (Output)
  /// [sigAlgName] (Output)
  /// [subject] Subject details.
  /// [subjectAlternativeNames] (Output)
  /// [validFrom] (Output)
  /// [version] (Output)
  KeystoresAliasesSelfSignedCertCertsInfoCertInfo({
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
    return <String, dynamic>{
      'basicConstraints': ?basicConstraints,
      'expiryDate': ?expiryDate,
      'isValid': ?isValid,
      'issuer': ?issuer,
      'publicKey': ?publicKey,
      'serialNumber': ?serialNumber,
      'sigAlgName': ?sigAlgName,
      'subject': ?subject,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'validFrom': ?validFrom,
      'version': ?version,
    };
  }

  factory KeystoresAliasesSelfSignedCertCertsInfoCertInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return KeystoresAliasesSelfSignedCertCertsInfoCertInfo(
      basicConstraints: map['basicConstraints'] == null
          ? null
          : map['basicConstraints'] as String,
      expiryDate: map['expiryDate'] == null
          ? null
          : map['expiryDate'] as String,
      isValid: map['isValid'] == null ? null : map['isValid'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      serialNumber: map['serialNumber'] == null
          ? null
          : map['serialNumber'] as String,
      sigAlgName: map['sigAlgName'] == null
          ? null
          : map['sigAlgName'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : (map['subjectAlternativeNames'] as List).cast<String>(),
      validFrom: map['validFrom'] == null ? null : map['validFrom'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
