// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL certificate details.
class CertificateDetailsResponse {
  /// Certificate Issuer.
  final pulumi.Input<String> issuer;

  /// Date Certificate is valid to.
  final pulumi.Input<String> notAfter;

  /// Date Certificate is valid from.
  final pulumi.Input<String> notBefore;

  /// Raw certificate data.
  final pulumi.Input<String> rawData;

  /// Certificate Serial Number.
  final pulumi.Input<String> serialNumber;

  /// Certificate Signature algorithm.
  final pulumi.Input<String> signatureAlgorithm;

  /// Certificate Subject.
  final pulumi.Input<String> subject;

  /// Certificate Thumbprint.
  final pulumi.Input<String> thumbprint;

  /// Certificate Version.
  final pulumi.Input<int> version;

  /// Creates a new [CertificateDetailsResponse].
  /// [issuer] Certificate Issuer.
  /// [notAfter] Date Certificate is valid to.
  /// [notBefore] Date Certificate is valid from.
  /// [rawData] Raw certificate data.
  /// [serialNumber] Certificate Serial Number.
  /// [signatureAlgorithm] Certificate Signature algorithm.
  /// [subject] Certificate Subject.
  /// [thumbprint] Certificate Thumbprint.
  /// [version] Certificate Version.
  CertificateDetailsResponse({
    required this.issuer,
    required this.notAfter,
    required this.notBefore,
    required this.rawData,
    required this.serialNumber,
    required this.signatureAlgorithm,
    required this.subject,
    required this.thumbprint,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
      'notAfter': notAfter,
      'notBefore': notBefore,
      'rawData': rawData,
      'serialNumber': serialNumber,
      'signatureAlgorithm': signatureAlgorithm,
      'subject': subject,
      'thumbprint': thumbprint,
      'version': version,
    };
  }

  factory CertificateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDetailsResponse(
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      notAfter: pulumi.Input.fromValue(map['notAfter'] as String),
      notBefore: pulumi.Input.fromValue(map['notBefore'] as String),
      rawData: pulumi.Input.fromValue(map['rawData'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      signatureAlgorithm: pulumi.Input.fromValue(
        map['signatureAlgorithm'] as String,
      ),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}
