// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorSecretSecretCustomerCertificate {
  /// The key vault certificate expiration date.
  final String expirationDate;
  /// The key vault certificate ID.
  final String keyVaultCertificateId;
  /// One or more `subject alternative names` contained within the key vault certificate.
  final List<String> subjectAlternativeNames;

  /// Creates a new [GetFrontdoorSecretSecretCustomerCertificate].
  /// [expirationDate] The key vault certificate expiration date.
  /// [keyVaultCertificateId] The key vault certificate ID.
  /// [subjectAlternativeNames] One or more `subject alternative names` contained within the key vault certificate.
  GetFrontdoorSecretSecretCustomerCertificate({
    required this.expirationDate,
    required this.keyVaultCertificateId,
    required this.subjectAlternativeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'keyVaultCertificateId': keyVaultCertificateId,
      'subjectAlternativeNames': subjectAlternativeNames,
    };
  }

  factory GetFrontdoorSecretSecretCustomerCertificate.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretSecretCustomerCertificate(
      expirationDate: map['expirationDate'] as String,
      keyVaultCertificateId: map['keyVaultCertificateId'] as String,
      subjectAlternativeNames: (map['subjectAlternativeNames'] as List).cast<String>(),
    );
  }
}

