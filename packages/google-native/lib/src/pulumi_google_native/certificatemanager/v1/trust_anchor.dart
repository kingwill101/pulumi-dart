// ignore_for_file: unused_element, unnecessary_cast

/// Defines a trust anchor.
class TrustAnchor {
  /// PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final String? pemCertificate;

  TrustAnchor({
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

  factory TrustAnchor.fromMap(Map<String, dynamic> map) {
    return TrustAnchor(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
