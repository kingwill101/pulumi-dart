// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secure LDAP Settings
class LdapsSettingsResponse {
  /// NotAfter DateTime of configure ldaps certificate.
  final pulumi.Input<String> certificateNotAfter;
  /// Thumbprint of configure ldaps certificate.
  final pulumi.Input<String> certificateThumbprint;
  /// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  final pulumi.Input<String>? externalAccess;
  /// A flag to determine whether or not Secure LDAP is enabled or disabled.
  final pulumi.Input<String>? ldaps;
  /// The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  final pulumi.Input<String>? pfxCertificate;
  /// The password to decrypt the provided Secure LDAP certificate pfx file.
  final pulumi.Input<String>? pfxCertificatePassword;
  /// Public certificate used to configure secure ldap.
  final pulumi.Input<String> publicCertificate;

  /// Creates a new [LdapsSettingsResponse].
  /// [certificateNotAfter] NotAfter DateTime of configure ldaps certificate.
  /// [certificateThumbprint] Thumbprint of configure ldaps certificate.
  /// [externalAccess] A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
  /// [ldaps] A flag to determine whether or not Secure LDAP is enabled or disabled.
  /// [pfxCertificate] The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file.
  /// [pfxCertificatePassword] The password to decrypt the provided Secure LDAP certificate pfx file.
  /// [publicCertificate] Public certificate used to configure secure ldap.
  const LdapsSettingsResponse({
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
      certificateNotAfter: pulumi.Input.fromValue(map['certificateNotAfter'] as String),
      certificateThumbprint: pulumi.Input.fromValue(map['certificateThumbprint'] as String),
      externalAccess: (() { final guardedValue = map['externalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldaps: (() { final guardedValue = map['ldaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfxCertificate: (() { final guardedValue = map['pfxCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfxCertificatePassword: (() { final guardedValue = map['pfxCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertificate: pulumi.Input.fromValue(map['publicCertificate'] as String),
    );
  }
}
