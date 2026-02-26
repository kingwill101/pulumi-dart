// ignore_for_file: unused_element, unnecessary_cast

class CertificateSelfManaged {
  /// (Optional, Deprecated)
  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`certificatePem`" pulumi-lang-dotnet="`CertificatePem`" pulumi-lang-go="`certificatePem`" pulumi-lang-python="`certificate_pem`" pulumi-lang-yaml="`certificatePem`" pulumi-lang-java="`certificatePem`">`certificate_pem`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`pemCertificate`" pulumi-lang-dotnet="`PemCertificate`" pulumi-lang-go="`pemCertificate`" pulumi-lang-python="`pem_certificate`" pulumi-lang-yaml="`pemCertificate`" pulumi-lang-java="`pemCertificate`">`pem_certificate`</span> instead.
  final String? certificatePem;

  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemCertificate;

  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemPrivateKey;

  /// (Optional, Deprecated)
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`privateKeyPem`" pulumi-lang-dotnet="`PrivateKeyPem`" pulumi-lang-go="`privateKeyPem`" pulumi-lang-python="`private_key_pem`" pulumi-lang-yaml="`privateKeyPem`" pulumi-lang-java="`privateKeyPem`">`private_key_pem`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`pemPrivateKey`" pulumi-lang-dotnet="`PemPrivateKey`" pulumi-lang-go="`pemPrivateKey`" pulumi-lang-python="`pem_private_key`" pulumi-lang-yaml="`pemPrivateKey`" pulumi-lang-java="`pemPrivateKey`">`pem_private_key`</span> instead.
  final String? privateKeyPem;

  CertificateSelfManaged({
    this.certificatePem,
    this.pemCertificate,
    this.pemPrivateKey,
    this.privateKeyPem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatePemValue = certificatePem;
    if (certificatePemValue != null) {
      map['certificatePem'] = certificatePemValue;
    }
    final pemCertificateValue = pemCertificate;
    if (pemCertificateValue != null) {
      map['pemCertificate'] = pemCertificateValue;
    }
    final pemPrivateKeyValue = pemPrivateKey;
    if (pemPrivateKeyValue != null) {
      map['pemPrivateKey'] = pemPrivateKeyValue;
    }
    final privateKeyPemValue = privateKeyPem;
    if (privateKeyPemValue != null) {
      map['privateKeyPem'] = privateKeyPemValue;
    }
    return map;
  }

  factory CertificateSelfManaged.fromMap(Map<String, dynamic> map) {
    return CertificateSelfManaged(
      certificatePem: map['certificatePem'] == null
          ? null
          : map['certificatePem'] as String,
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
      pemPrivateKey:
          map['pemPrivateKey'] == null ? null : map['pemPrivateKey'] as String,
      privateKeyPem:
          map['privateKeyPem'] == null ? null : map['privateKeyPem'] as String,
    );
  }
}
