// ignore_for_file: unused_element, unnecessary_cast


class BackendServiceFabricClusterServerX509Name {
  /// The thumbprint for the issuer of the certificate.
  final String issuerCertificateThumbprint;
  /// The common name of the certificate.
  final String name;

  /// Creates a new [BackendServiceFabricClusterServerX509Name].
  /// [issuerCertificateThumbprint] The thumbprint for the issuer of the certificate.
  /// [name] The common name of the certificate.
  BackendServiceFabricClusterServerX509Name({
    required this.issuerCertificateThumbprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateThumbprint': issuerCertificateThumbprint,
      'name': name,
    };
  }

  factory BackendServiceFabricClusterServerX509Name.fromMap(Map<String, dynamic> map) {
    return BackendServiceFabricClusterServerX509Name(
      issuerCertificateThumbprint: map['issuerCertificateThumbprint'] as String,
      name: map['name'] as String,
    );
  }
}

