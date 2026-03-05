// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secure LDAP Settings
class LdapsSettings {
  /// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  final pulumi.Input<String>? externalAccess;
  /// A flag to determine whether or not Secure LDAP is enabled or disabled.
  final pulumi.Input<String>? ldaps;
  /// The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  final pulumi.Input<String>? pfxCertificate;
  /// The password to decrypt the provided Secure LDAP certificate pfx file.
  final pulumi.Input<String>? pfxCertificatePassword;

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
      externalAccess: (() { final guardedValue = map['externalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldaps: (() { final guardedValue = map['ldaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfxCertificate: (() { final guardedValue = map['pfxCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfxCertificatePassword: (() { final guardedValue = map['pfxCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

