// ignore_for_file: unused_element, unnecessary_cast


/// Client certificate definition.
class ClientCertificate {
  /// Certificate common name.
  final String? commonName;
  /// Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  final bool isAdmin;
  /// Issuer thumbprint for the certificate. Only used together with CommonName.
  final String? issuerThumbprint;
  /// Certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [ClientCertificate].
  /// [commonName] Certificate common name.
  /// [isAdmin] Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  /// [issuerThumbprint] Issuer thumbprint for the certificate. Only used together with CommonName.
  /// [thumbprint] Certificate thumbprint.
  ClientCertificate({
    this.commonName,
    required this.isAdmin,
    this.issuerThumbprint,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'isAdmin': isAdmin,
      'issuerThumbprint': ?issuerThumbprint,
      'thumbprint': ?thumbprint,
    };
  }

  factory ClientCertificate.fromMap(Map<String, dynamic> map) {
    return ClientCertificate(
      commonName: map['commonName'] == null ? null : map['commonName'] as String,
      isAdmin: map['isAdmin'] as bool,
      issuerThumbprint: map['issuerThumbprint'] == null ? null : map['issuerThumbprint'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

