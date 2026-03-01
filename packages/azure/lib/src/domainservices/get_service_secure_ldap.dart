// ignore_for_file: unused_element, unnecessary_cast


class GetServiceSecureLdap {
  final String certificateExpiry;
  final String certificateThumbprint;
  /// Whether secure LDAP is enabled for the managed domain.
  final bool enabled;
  /// Whether external access to LDAPS over the Internet, is enabled.
  final bool externalAccessEnabled;
  final String publicCertificate;

  /// Creates a new [GetServiceSecureLdap].
  /// [certificateExpiry] Required.
  /// [certificateThumbprint] Required.
  /// [enabled] Whether secure LDAP is enabled for the managed domain.
  /// [externalAccessEnabled] Whether external access to LDAPS over the Internet, is enabled.
  /// [publicCertificate] Required.
  GetServiceSecureLdap({
    required this.certificateExpiry,
    required this.certificateThumbprint,
    required this.enabled,
    required this.externalAccessEnabled,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateExpiry': certificateExpiry,
      'certificateThumbprint': certificateThumbprint,
      'enabled': enabled,
      'externalAccessEnabled': externalAccessEnabled,
      'publicCertificate': publicCertificate,
    };
  }

  factory GetServiceSecureLdap.fromMap(Map<String, dynamic> map) {
    return GetServiceSecureLdap(
      certificateExpiry: map['certificateExpiry'] as String,
      certificateThumbprint: map['certificateThumbprint'] as String,
      enabled: map['enabled'] as bool,
      externalAccessEnabled: map['externalAccessEnabled'] as bool,
      publicCertificate: map['publicCertificate'] as String,
    );
  }
}

