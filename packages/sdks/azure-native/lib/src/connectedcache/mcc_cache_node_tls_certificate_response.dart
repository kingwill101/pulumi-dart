// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mcc cache node resource Tls certificate details.
class MccCacheNodeTlsCertificateResponse {
  /// Mcc cache node Tls certificate status.
  final pulumi.Input<String> actionRequired;
  /// Mcc cache node Tls certificate file name.
  final pulumi.Input<String> certificateFileName;
  /// Mcc cache node Tls certificate expiry date.
  final pulumi.Input<String> expiryDate;
  /// Mcc cache node Tls certificate not before date.
  final pulumi.Input<String> notBeforeDate;
  /// Mcc cache node Tls certificate subject name.
  final pulumi.Input<String> subject;
  /// Mcc cache node Tls certificate subject alternate name.
  final pulumi.Input<String> subjectAltName;
  /// Mcc cache node Tls certificate thumbprint.
  final pulumi.Input<String> thumbprint;

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
      actionRequired: (map['actionRequired'] as String).input(),
      certificateFileName: (map['certificateFileName'] as String).input(),
      expiryDate: (map['expiryDate'] as String).input(),
      notBeforeDate: (map['notBeforeDate'] as String).input(),
      subject: (map['subject'] as String).input(),
      subjectAltName: (map['subjectAltName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
    );
  }
}

