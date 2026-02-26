// ignore_for_file: unused_element, unnecessary_cast

/// Defines an intermediate CA.
class IntermediateCA {
  /// PEM intermediate certificate used for building up paths for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final String? pemCertificate;

  IntermediateCA({
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

  factory IntermediateCA.fromMap(Map<String, dynamic> map) {
    return IntermediateCA(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
