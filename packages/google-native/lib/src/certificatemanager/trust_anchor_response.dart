// ignore_for_file: unused_element, unnecessary_cast

/// Defines a trust anchor.
class TrustAnchorResponse {
  /// PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final String pemCertificate;

  /// Creates a new [TrustAnchorResponse].
  /// [pemCertificate] PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may occupy up to 5kB.
  TrustAnchorResponse({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pemCertificate'] = pemCertificate;
    return map;
  }

  factory TrustAnchorResponse.fromMap(Map<String, dynamic> map) {
    return TrustAnchorResponse(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}
