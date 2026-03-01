// ignore_for_file: unused_element, unnecessary_cast


/// Secure LDAP Settings
class LdapsSettings {
  /// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  final String? externalAccess;
  /// A flag to determine whether or not Secure LDAP is enabled or disabled.
  final String? ldaps;
  /// The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  final String? pfxCertificate;
  /// The password to decrypt the provided Secure LDAP certificate pfx file.
  final String? pfxCertificatePassword;

  /// Creates a new [LdapsSettings].
  /// [externalAccess] A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  /// [ldaps] A flag to determine whether or not Secure LDAP is enabled or disabled.
  /// [pfxCertificate] The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  /// [pfxCertificatePassword] The password to decrypt the provided Secure LDAP certificate pfx file.
  LdapsSettings({
    this.externalAccess,
    this.ldaps,
    this.pfxCertificate,
    this.pfxCertificatePassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAccess': ?externalAccess,
      'ldaps': ?ldaps,
      'pfxCertificate': ?pfxCertificate,
      'pfxCertificatePassword': ?pfxCertificatePassword,
    };
  }

  factory LdapsSettings.fromMap(Map<String, dynamic> map) {
    return LdapsSettings(
      externalAccess: map['externalAccess'] == null ? null : map['externalAccess'] as String,
      ldaps: map['ldaps'] == null ? null : map['ldaps'] as String,
      pfxCertificate: map['pfxCertificate'] == null ? null : map['pfxCertificate'] as String,
      pfxCertificatePassword: map['pfxCertificatePassword'] == null ? null : map['pfxCertificatePassword'] as String,
    );
  }
}

