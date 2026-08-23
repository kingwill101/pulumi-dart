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
  const MccCacheNodeTlsCertificateResponse({
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
      actionRequired: pulumi.Input.fromValue(map['actionRequired'] as String),
      certificateFileName: pulumi.Input.fromValue(map['certificateFileName'] as String),
      expiryDate: pulumi.Input.fromValue(map['expiryDate'] as String),
      notBeforeDate: pulumi.Input.fromValue(map['notBeforeDate'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAltName: pulumi.Input.fromValue(map['subjectAltName'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
