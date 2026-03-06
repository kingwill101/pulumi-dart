// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTlsInspectCaCertificatesCertificate {
  /// CA certificate ID
  final pulumi.Input<String> caCertId;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// Creates a new [GetTlsInspectCaCertificatesCertificate].
  /// [caCertId] CA certificate ID
  /// [id] The ID of the resource supplied above.
  const GetTlsInspectCaCertificatesCertificate({
    required this.caCertId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertId': caCertId,
      'id': id,
    };
  }

  factory GetTlsInspectCaCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectCaCertificatesCertificate(
      caCertId: pulumi.Input.fromValue(map['caCertId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

