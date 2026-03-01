// ignore_for_file: unused_element, unnecessary_cast


class GetTlsInspectCaCertificatesCertificate {
  /// CA certificate ID
  final String caCertId;
  /// The ID of the resource supplied above.
  final String id;

  /// Creates a new [GetTlsInspectCaCertificatesCertificate].
  /// [caCertId] CA certificate ID
  /// [id] The ID of the resource supplied above.
  GetTlsInspectCaCertificatesCertificate({
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
      caCertId: map['caCertId'] as String,
      id: map['id'] as String,
    );
  }
}

