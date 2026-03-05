// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of server X509Names.
class X509CertificateName {
  /// Thumbprint for the Issuer of the Certificate.
  final pulumi.Input<String>? issuerCertificateThumbprint;
  /// Common Name of the Certificate.
  final pulumi.Input<String>? name;

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
      issuerCertificateThumbprint: (() { final guardedValue = map['issuerCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

