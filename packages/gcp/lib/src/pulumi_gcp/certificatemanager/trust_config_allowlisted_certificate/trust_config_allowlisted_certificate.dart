// ignore_for_file: unused_element, unnecessary_cast

class TrustConfigAllowlistedCertificate {
  /// PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be a parseable X.509 certificate.
  final String pemCertificate;

  TrustConfigAllowlistedCertificate({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pemCertificate'] = pemCertificate;
    return map;
  }

  factory TrustConfigAllowlistedCertificate.fromMap(Map<String, dynamic> map) {
    return TrustConfigAllowlistedCertificate(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}
