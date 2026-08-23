// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to the certificate
class CertificateReferenceResponse {
  /// Resource Id of the certificate
  final pulumi.Input<String> resourceId;

  /// Creates a new [CertificateReferenceResponse].
  /// [resourceId] Resource Id of the certificate
  const CertificateReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory CertificateReferenceResponse.fromMap(Map<String, dynamic> map) {
    return CertificateReferenceResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
