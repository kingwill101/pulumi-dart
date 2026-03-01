// ignore_for_file: unused_element, unnecessary_cast


/// Certificate information
class CertificateInfoResponse {
  /// The certificate name
  final String certificateName;
  /// The certificate expiry date
  final String expiryDate;

  /// Creates a new [CertificateInfoResponse].
  /// [certificateName] The certificate name
  /// [expiryDate] The certificate expiry date
  CertificateInfoResponse({
    required this.certificateName,
    required this.expiryDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'expiryDate': expiryDate,
    };
  }

  factory CertificateInfoResponse.fromMap(Map<String, dynamic> map) {
    return CertificateInfoResponse(
      certificateName: map['certificateName'] as String,
      expiryDate: map['expiryDate'] as String,
    );
  }
}

