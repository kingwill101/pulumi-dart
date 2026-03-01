// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectIdPaths': ?objectIdPaths};
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: map['objectIdPaths'] == null
          ? null
          : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
