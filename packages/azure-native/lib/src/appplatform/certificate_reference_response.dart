// ignore_for_file: unused_element, unnecessary_cast


/// A reference to the certificate
class CertificateReferenceResponse {
  /// Resource Id of the certificate
  final String resourceId;

  /// Creates a new [CertificateReferenceResponse].
  /// [resourceId] Resource Id of the certificate
  CertificateReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory CertificateReferenceResponse.fromMap(Map<String, dynamic> map) {
    return CertificateReferenceResponse(
      resourceId: map['resourceId'] as String,
    );
  }
}

