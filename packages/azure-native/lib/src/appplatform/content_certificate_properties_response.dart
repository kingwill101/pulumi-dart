// ignore_for_file: unused_element, unnecessary_cast


/// Properties of certificate imported from key vault.
class ContentCertificatePropertiesResponse {
  /// The activate date of certificate.
  final String activateDate;
  /// The domain list of certificate.
  final List<String> dnsNames;
  /// The expiration date of certificate.
  final String expirationDate;
  /// The issue date of certificate.
  final String issuedDate;
  /// The issuer of certificate.
  final String issuer;
  /// Provisioning state of the Certificate
  final String provisioningState;
  /// The subject name of certificate.
  final String subjectName;
  /// The thumbprint of certificate.
  final String thumbprint;
  /// The type of the certificate source.
  /// Expected value is 'ContentCertificate'.
  final String type;

  /// Creates a new [ContentCertificatePropertiesResponse].
  /// [activateDate] The activate date of certificate.
  /// [dnsNames] The domain list of certificate.
  /// [expirationDate] The expiration date of certificate.
  /// [issuedDate] The issue date of certificate.
  /// [issuer] The issuer of certificate.
  /// [provisioningState] Provisioning state of the Certificate
  /// [subjectName] The subject name of certificate.
  /// [thumbprint] The thumbprint of certificate.
  /// [type] The type of the certificate source.
  ContentCertificatePropertiesResponse({
    required this.activateDate,
    required this.dnsNames,
    required this.expirationDate,
    required this.issuedDate,
    required this.issuer,
    required this.provisioningState,
    required this.subjectName,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activateDate': activateDate,
      'dnsNames': dnsNames,
      'expirationDate': expirationDate,
      'issuedDate': issuedDate,
      'issuer': issuer,
      'provisioningState': provisioningState,
      'subjectName': subjectName,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory ContentCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContentCertificatePropertiesResponse(
      activateDate: map['activateDate'] as String,
      dnsNames: (map['dnsNames'] as List).cast<String>(),
      expirationDate: map['expirationDate'] as String,
      issuedDate: map['issuedDate'] as String,
      issuer: map['issuer'] as String,
      provisioningState: map['provisioningState'] as String,
      subjectName: map['subjectName'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

