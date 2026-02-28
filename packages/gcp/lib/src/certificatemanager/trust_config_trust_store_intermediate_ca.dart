// ignore_for_file: unused_element, unnecessary_cast

class TrustConfigTrustStoreIntermediateCa {
  /// PEM intermediate certificate used for building up paths for validation.
  /// Each certificate provided in PEM format may occupy up to 5kB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemCertificate;

  /// Creates a new [TrustConfigTrustStoreIntermediateCa].
  /// [pemCertificate] PEM intermediate certificate used for building up paths for validation.
  TrustConfigTrustStoreIntermediateCa({
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

  factory TrustConfigTrustStoreIntermediateCa.fromMap(
      Map<String, dynamic> map) {
    return TrustConfigTrustStoreIntermediateCa(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
