// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectIdPathsValue = objectIdPaths;
    if (objectIdPathsValue != null) {
      map['objectIdPaths'] = objectIdPathsValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: map['objectIdPaths'] == null
          ? null
          : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
