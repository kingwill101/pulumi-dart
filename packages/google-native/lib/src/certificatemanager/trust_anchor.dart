// ignore_for_file: unused_element, unnecessary_cast

/// Defines a trust anchor.
class TrustAnchor {
  /// PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final String? pemCertificate;

  /// Creates a new [TrustAnchor].
  /// [pemCertificate] PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  TrustAnchor({this.pemCertificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': ?pemCertificate};
  }

  factory TrustAnchor.fromMap(Map<String, dynamic> map) {
    return TrustAnchor(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
