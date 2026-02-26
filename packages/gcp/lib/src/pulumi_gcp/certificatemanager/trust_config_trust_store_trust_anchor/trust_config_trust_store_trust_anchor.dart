// ignore_for_file: unused_element, unnecessary_cast

class TrustConfigTrustStoreTrustAnchor {
  /// PEM root certificate of the PKI used for validation.
  /// Each certificate provided in PEM format may occupy up to 5kB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemCertificate;

  TrustConfigTrustStoreTrustAnchor({
    this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pemCertificateValue = pemCertificate;
    if (pemCertificateValue != null) {
      map['pemCertificate'] = pemCertificateValue;
    }
    return map;
  }

  factory TrustConfigTrustStoreTrustAnchor.fromMap(Map<String, dynamic> map) {
    return TrustConfigTrustStoreTrustAnchor(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
