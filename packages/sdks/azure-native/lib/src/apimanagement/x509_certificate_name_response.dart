// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of server X509Names.
class X509CertificateNameResponse {
  /// Thumbprint for the Issuer of the Certificate.
  final pulumi.Input<String>? issuerCertificateThumbprint;
  /// Common Name of the Certificate.
  final pulumi.Input<String>? name;

  /// Creates a new [X509CertificateNameResponse].
  /// [issuerCertificateThumbprint] Thumbprint for the Issuer of the Certificate.
  /// [name] Common Name of the Certificate.
  const X509CertificateNameResponse({
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
      issuerCertificateThumbprint: (() { final guardedValue = map['issuerCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

