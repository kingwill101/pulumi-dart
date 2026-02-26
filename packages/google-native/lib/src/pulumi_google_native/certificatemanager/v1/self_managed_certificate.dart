// ignore_for_file: unused_element, unnecessary_cast

/// Certificate data for a SelfManaged Certificate. SelfManaged Certificates are uploaded by the user. Updating such certificates before they expire remains the user's responsibility.
class SelfManagedCertificate {
  /// Input only. The PEM-encoded certificate chain. Leaf certificate comes first, followed by intermediate ones if any.
  final String? pemCertificate;

  /// Input only. The PEM-encoded private key of the leaf certificate.
  final String? pemPrivateKey;

  SelfManagedCertificate({
    this.pemCertificate,
    this.pemPrivateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pemCertificateValue = pemCertificate;
    if (pemCertificateValue != null) {
      map['pemCertificate'] = pemCertificateValue;
    }
    final pemPrivateKeyValue = pemPrivateKey;
    if (pemPrivateKeyValue != null) {
      map['pemPrivateKey'] = pemPrivateKeyValue;
    }
    return map;
  }

  factory SelfManagedCertificate.fromMap(Map<String, dynamic> map) {
    return SelfManagedCertificate(
      pemCertificate: map['pemCertificate'] == null
          ? null
          : map['pemCertificate'] as String,
      pemPrivateKey:
          map['pemPrivateKey'] == null ? null : map['pemPrivateKey'] as String,
    );
  }
}
