// ignore_for_file: unused_element, unnecessary_cast


/// Secure LDAP Settings
class LdapsSettingsResponse {
  /// NotAfter DateTime of configure ldaps certificate.
  final String certificateNotAfter;
  /// Thumbprint of configure ldaps certificate.
  final String certificateThumbprint;
  /// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  final String? externalAccess;
  /// A flag to determine whether or not Secure LDAP is enabled or disabled.
  final String? ldaps;
  /// The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  final String? pfxCertificate;
  /// The password to decrypt the provided Secure LDAP certificate pfx file.
  final String? pfxCertificatePassword;
  /// Public certificate used to configure secure ldap.
  final String publicCertificate;

  /// Creates a new [LdapsSettingsResponse].
  /// [certificateNotAfter] NotAfter DateTime of configure ldaps certificate.
  /// [certificateThumbprint] Thumbprint of configure ldaps certificate.
  /// [externalAccess] A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  /// [ldaps] A flag to determine whether or not Secure LDAP is enabled or disabled.
  /// [pfxCertificate] The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  /// [pfxCertificatePassword] The password to decrypt the provided Secure LDAP certificate pfx file.
  /// [publicCertificate] Public certificate used to configure secure ldap.
  LdapsSettingsResponse({
    required this.certificateNotAfter,
    required this.certificateThumbprint,
    this.externalAccess,
    this.ldaps,
    this.pfxCertificate,
    this.pfxCertificatePassword,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateNotAfter': certificateNotAfter,
      'certificateThumbprint': certificateThumbprint,
      'externalAccess': ?externalAccess,
      'ldaps': ?ldaps,
      'pfxCertificate': ?pfxCertificate,
      'pfxCertificatePassword': ?pfxCertificatePassword,
      'publicCertificate': publicCertificate,
    };
  }

  factory LdapsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LdapsSettingsResponse(
      certificateNotAfter: map['certificateNotAfter'] as String,
      certificateThumbprint: map['certificateThumbprint'] as String,
      externalAccess: map['externalAccess'] == null ? null : map['externalAccess'] as String,
      ldaps: map['ldaps'] == null ? null : map['ldaps'] as String,
      pfxCertificate: map['pfxCertificate'] == null ? null : map['pfxCertificate'] as String,
      pfxCertificatePassword: map['pfxCertificatePassword'] == null ? null : map['pfxCertificatePassword'] as String,
      publicCertificate: map['publicCertificate'] as String,
    );
  }
}

