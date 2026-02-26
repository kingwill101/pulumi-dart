// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", though regularly used for non-WWW TLS.
  final bool clientAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable code client authentication".
  final bool codeSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection".
  final bool emailProtection;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses".
  final bool ocspSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", though regularly used for non-WWW TLS.
  final bool serverAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a time".
  final bool timeStamping;

  GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage({
    required this.clientAuth,
    required this.codeSigning,
    required this.emailProtection,
    required this.ocspSigning,
    required this.serverAuth,
    required this.timeStamping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientAuth'] = clientAuth;
    map['codeSigning'] = codeSigning;
    map['emailProtection'] = emailProtection;
    map['ocspSigning'] = ocspSigning;
    map['serverAuth'] = serverAuth;
    map['timeStamping'] = timeStamping;
    return map;
  }

  factory GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage(
      clientAuth: map['clientAuth'] as bool,
      codeSigning: map['codeSigning'] as bool,
      emailProtection: map['emailProtection'] as bool,
      ocspSigning: map['ocspSigning'] as bool,
      serverAuth: map['serverAuth'] as bool,
      timeStamping: map['timeStamping'] as bool,
    );
  }
}
