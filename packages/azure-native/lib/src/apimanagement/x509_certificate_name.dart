// ignore_for_file: unused_element, unnecessary_cast


/// Properties of server X509Names.
class X509CertificateName {
  /// Thumbprint for the Issuer of the Certificate.
  final String? issuerCertificateThumbprint;
  /// Common Name of the Certificate.
  final String? name;

  /// Creates a new [X509CertificateName].
  /// [issuerCertificateThumbprint] Thumbprint for the Issuer of the Certificate.
  /// [name] Common Name of the Certificate.
  X509CertificateName({
    this.issuerCertificateThumbprint,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateThumbprint': ?issuerCertificateThumbprint,
      'name': ?name,
    };
  }

  factory X509CertificateName.fromMap(Map<String, dynamic> map) {
    return X509CertificateName(
      issuerCertificateThumbprint: map['issuerCertificateThumbprint'] == null ? null : map['issuerCertificateThumbprint'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

