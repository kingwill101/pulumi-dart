// ignore_for_file: unused_element, unnecessary_cast


/// Properties of server X509Names.
class X509CertificateNameResponse {
  /// Thumbprint for the Issuer of the Certificate.
  final String? issuerCertificateThumbprint;
  /// Common Name of the Certificate.
  final String? name;

  /// Creates a new [X509CertificateNameResponse].
  /// [issuerCertificateThumbprint] Thumbprint for the Issuer of the Certificate.
  /// [name] Common Name of the Certificate.
  X509CertificateNameResponse({
    this.issuerCertificateThumbprint,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateThumbprint': ?issuerCertificateThumbprint,
      'name': ?name,
    };
  }

  factory X509CertificateNameResponse.fromMap(Map<String, dynamic> map) {
    return X509CertificateNameResponse(
      issuerCertificateThumbprint: map['issuerCertificateThumbprint'] == null ? null : map['issuerCertificateThumbprint'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

