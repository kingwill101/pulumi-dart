// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId({
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

  factory CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId(
      objectIdPaths: map['objectIdPaths'] == null
          ? null
          : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
