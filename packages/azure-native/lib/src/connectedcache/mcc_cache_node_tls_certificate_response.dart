// ignore_for_file: unused_element, unnecessary_cast


/// Mcc cache node resource Tls certificate details.
class MccCacheNodeTlsCertificateResponse {
  /// Mcc cache node Tls certificate status.
  final String actionRequired;
  /// Mcc cache node Tls certificate file name.
  final String certificateFileName;
  /// Mcc cache node Tls certificate expiry date.
  final String expiryDate;
  /// Mcc cache node Tls certificate not before date.
  final String notBeforeDate;
  /// Mcc cache node Tls certificate subject name.
  final String subject;
  /// Mcc cache node Tls certificate subject alternate name.
  final String subjectAltName;
  /// Mcc cache node Tls certificate thumbprint.
  final String thumbprint;

  /// Creates a new [MccCacheNodeTlsCertificateResponse].
  /// [actionRequired] Mcc cache node Tls certificate status.
  /// [certificateFileName] Mcc cache node Tls certificate file name.
  /// [expiryDate] Mcc cache node Tls certificate expiry date.
  /// [notBeforeDate] Mcc cache node Tls certificate not before date.
  /// [subject] Mcc cache node Tls certificate subject name.
  /// [subjectAltName] Mcc cache node Tls certificate subject alternate name.
  /// [thumbprint] Mcc cache node Tls certificate thumbprint.
  MccCacheNodeTlsCertificateResponse({
    required this.actionRequired,
    required this.certificateFileName,
    required this.expiryDate,
    required this.notBeforeDate,
    required this.subject,
    required this.subjectAltName,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': actionRequired,
      'certificateFileName': certificateFileName,
      'expiryDate': expiryDate,
      'notBeforeDate': notBeforeDate,
      'subject': subject,
      'subjectAltName': subjectAltName,
      'thumbprint': thumbprint,
    };
  }

  factory MccCacheNodeTlsCertificateResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeTlsCertificateResponse(
      actionRequired: map['actionRequired'] as String,
      certificateFileName: map['certificateFileName'] as String,
      expiryDate: map['expiryDate'] as String,
      notBeforeDate: map['notBeforeDate'] as String,
      subject: map['subject'] as String,
      subjectAltName: map['subjectAltName'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

