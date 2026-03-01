// ignore_for_file: unused_element, unnecessary_cast


class ServiceSecureLdap {
  /// The expiry time of the certificate.
  final String? certificateExpiry;
  /// The thumbprint of the certificate.
  final String? certificateThumbprint;
  /// Whether to enable secure LDAP for the managed domain. For more information, please see [official documentation on enabling LDAPS](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-configure-ldaps), paying particular attention to the section on network security to avoid unnecessarily exposing your service to Internet-borne bruteforce attacks.
  final bool enabled;
  /// Whether to enable external access to LDAPS over the Internet. Defaults to `false`.
  final bool? externalAccessEnabled;
  /// The certificate/private key to use for LDAPS, as a base64-encoded TripleDES-SHA1 encrypted PKCS#12 bundle (PFX file).
  final String pfxCertificate;
  /// The password to use for decrypting the PKCS#12 bundle (PFX file).
  final String pfxCertificatePassword;
  /// The public certificate.
  final String? publicCertificate;

  /// Creates a new [ServiceSecureLdap].
  /// [certificateExpiry] The expiry time of the certificate.
  /// [certificateThumbprint] The thumbprint of the certificate.
  /// [enabled] Whether to enable secure LDAP for the managed domain. For more information, please see [official documentation on enabling LDAPS](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-configure-ldaps), paying particular attention to the section on network security to avoid unnecessarily exposing your service to Internet-borne bruteforce attacks.
  /// [externalAccessEnabled] Whether to enable external access to LDAPS over the Internet. Defaults to `false`.
  /// [pfxCertificate] The certificate/private key to use for LDAPS, as a base64-encoded TripleDES-SHA1 encrypted PKCS#12 bundle (PFX file).
  /// [pfxCertificatePassword] The password to use for decrypting the PKCS#12 bundle (PFX file).
  /// [publicCertificate] The public certificate.
  ServiceSecureLdap({
    this.certificateExpiry,
    this.certificateThumbprint,
    required this.enabled,
    this.externalAccessEnabled,
    required this.pfxCertificate,
    required this.pfxCertificatePassword,
    this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateExpiry': ?certificateExpiry,
      'certificateThumbprint': ?certificateThumbprint,
      'enabled': enabled,
      'externalAccessEnabled': ?externalAccessEnabled,
      'pfxCertificate': pfxCertificate,
      'pfxCertificatePassword': pfxCertificatePassword,
      'publicCertificate': ?publicCertificate,
    };
  }

  factory ServiceSecureLdap.fromMap(Map<String, dynamic> map) {
    return ServiceSecureLdap(
      certificateExpiry: map['certificateExpiry'] == null ? null : map['certificateExpiry'] as String,
      certificateThumbprint: map['certificateThumbprint'] == null ? null : map['certificateThumbprint'] as String,
      enabled: map['enabled'] as bool,
      externalAccessEnabled: map['externalAccessEnabled'] == null ? null : map['externalAccessEnabled'] as bool,
      pfxCertificate: map['pfxCertificate'] as String,
      pfxCertificatePassword: map['pfxCertificatePassword'] as String,
      publicCertificate: map['publicCertificate'] == null ? null : map['publicCertificate'] as String,
    );
  }
}

