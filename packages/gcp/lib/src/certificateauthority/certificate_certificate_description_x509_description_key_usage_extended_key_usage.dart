// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  final bool? clientAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  final bool? codeSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  final bool? emailProtection;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  final bool? ocspSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  final bool? serverAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  final bool? timeStamping;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage].
  /// [clientAuth] Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  /// [codeSigning] Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  /// [emailProtection] Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  /// [ocspSigning] Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  /// [serverAuth] Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  /// [timeStamping] Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage({
    this.clientAuth,
    this.codeSigning,
    this.emailProtection,
    this.ocspSigning,
    this.serverAuth,
    this.timeStamping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientAuthValue = clientAuth;
    if (clientAuthValue != null) {
      map['clientAuth'] = clientAuthValue;
    }
    final codeSigningValue = codeSigning;
    if (codeSigningValue != null) {
      map['codeSigning'] = codeSigningValue;
    }
    final emailProtectionValue = emailProtection;
    if (emailProtectionValue != null) {
      map['emailProtection'] = emailProtectionValue;
    }
    final ocspSigningValue = ocspSigning;
    if (ocspSigningValue != null) {
      map['ocspSigning'] = ocspSigningValue;
    }
    final serverAuthValue = serverAuth;
    if (serverAuthValue != null) {
      map['serverAuth'] = serverAuthValue;
    }
    final timeStampingValue = timeStamping;
    if (timeStampingValue != null) {
      map['timeStamping'] = timeStampingValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage(
      clientAuth: map['clientAuth'] == null ? null : map['clientAuth'] as bool,
      codeSigning:
          map['codeSigning'] == null ? null : map['codeSigning'] as bool,
      emailProtection: map['emailProtection'] == null
          ? null
          : map['emailProtection'] as bool,
      ocspSigning:
          map['ocspSigning'] == null ? null : map['ocspSigning'] as bool,
      serverAuth: map['serverAuth'] == null ? null : map['serverAuth'] as bool,
      timeStamping:
          map['timeStamping'] == null ? null : map['timeStamping'] as bool,
    );
  }
}
