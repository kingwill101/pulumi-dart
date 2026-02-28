// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId {
  /// (Output)
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId].
  /// [objectIdPaths] (Output)
  CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId({
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

  factory CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId(
      objectIdPaths: map['objectIdPaths'] == null
          ? null
          : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
