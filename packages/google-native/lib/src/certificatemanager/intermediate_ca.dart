// ignore_for_file: unused_element, unnecessary_cast

/// Defines an intermediate CA.
class IntermediateCA {
  /// PEM intermediate certificate used for building up paths for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final String? pemCertificate;

  /// Creates a new [IntermediateCA].
  /// [pemCertificate] PEM intermediate certificate used for building up paths for validation. Each certificate provided in PEM format may occupy up to 5kB.
  IntermediateCA({this.pemCertificate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificate': ?pemCertificate};
  }

  factory IntermediateCA.fromMap(Map<String, dynamic> map) {
    return IntermediateCA(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
    );
  }
}
