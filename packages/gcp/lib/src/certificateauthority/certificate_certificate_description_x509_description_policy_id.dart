// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionPolicyId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionPolicyId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateCertificateDescriptionX509DescriptionPolicyId({
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

  factory CertificateCertificateDescriptionX509DescriptionPolicyId.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionPolicyId(
      objectIdPaths: map['objectIdPaths'] == null
          ? null
          : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
