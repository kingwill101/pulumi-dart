// ignore_for_file: unused_element, unnecessary_cast


/// Managed Certificate used for https
class ManagedCertificateParametersResponse {
  /// Certificate expiration date.
  final String expirationDate;
  /// Subject name in the certificate.
  final String subject;
  /// The type of the secret resource.
  /// Expected value is 'ManagedCertificate'.
  final String type;

  /// Creates a new [ManagedCertificateParametersResponse].
  /// [expirationDate] Certificate expiration date.
  /// [subject] Subject name in the certificate.
  /// [type] The type of the secret resource.
  ManagedCertificateParametersResponse({
    required this.expirationDate,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'subject': subject,
      'type': type,
    };
  }

  factory ManagedCertificateParametersResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateParametersResponse(
      expirationDate: map['expirationDate'] as String,
      subject: map['subject'] as String,
      type: map['type'] as String,
    );
  }
}

