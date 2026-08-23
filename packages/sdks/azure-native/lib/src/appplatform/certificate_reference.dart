// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to the certificate
class CertificateReference {
  /// Resource Id of the certificate
  final pulumi.Input<String> resourceId;

  /// Creates a new [CertificateReference].
  /// [resourceId] Resource Id of the certificate
  const CertificateReference({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory CertificateReference.fromMap(Map<String, dynamic> map) {
    return CertificateReference(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
