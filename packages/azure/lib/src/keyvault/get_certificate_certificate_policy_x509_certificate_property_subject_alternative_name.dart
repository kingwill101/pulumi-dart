// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName {
  /// A list of alternative DNS names (FQDNs) identified by the Certificate.
  final List<String> dnsNames;
  /// A list of email addresses identified by this Certificate.
  final List<String> emails;
  /// A list of User Principal Names identified by the Certificate.
  final List<String> upns;

  /// Creates a new [GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName].
  /// [dnsNames] A list of alternative DNS names (FQDNs) identified by the Certificate.
  /// [emails] A list of email addresses identified by this Certificate.
  /// [upns] A list of User Principal Names identified by the Certificate.
  GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName({
    required this.dnsNames,
    required this.emails,
    required this.upns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': dnsNames,
      'emails': emails,
      'upns': upns,
    };
  }

  factory GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName(
      dnsNames: (map['dnsNames'] as List).cast<String>(),
      emails: (map['emails'] as List).cast<String>(),
      upns: (map['upns'] as List).cast<String>(),
    );
  }
}

