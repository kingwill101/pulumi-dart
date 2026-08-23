// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the certificate.
class CertificateResponse {
  /// Certificate created date.
  final pulumi.Input<String>? createdDate;
  /// The timestamp when the revocation is effective.
  final pulumi.Input<String>? effectiveAt;
  /// Enhanced key usage of the certificate.
  final pulumi.Input<String>? enhancedKeyUsage;
  /// Certificate expiry date.
  final pulumi.Input<String>? expiryDate;
  /// Reason for the revocation failure.
  final pulumi.Input<String>? failureReason;
  /// Reason for revocation.
  final pulumi.Input<String>? reason;
  /// Remarks for the revocation.
  final pulumi.Input<String>? remarks;
  /// The timestamp when the revocation is requested.
  final pulumi.Input<String>? requestedAt;
  /// Serial number of the certificate.
  final pulumi.Input<String>? serialNumber;
  /// Status of the certificate.
  final pulumi.Input<String> status;
  /// Subject name of the certificate.
  final pulumi.Input<String>? subjectName;
  /// Thumbprint of the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateResponse].
  /// [createdDate] Certificate created date.
  /// [effectiveAt] The timestamp when the revocation is effective.
  /// [enhancedKeyUsage] Enhanced key usage of the certificate.
  /// [expiryDate] Certificate expiry date.
  /// [failureReason] Reason for the revocation failure.
  /// [reason] Reason for revocation.
  /// [remarks] Remarks for the revocation.
  /// [requestedAt] The timestamp when the revocation is requested.
  /// [serialNumber] Serial number of the certificate.
  /// [status] Status of the certificate.
  /// [subjectName] Subject name of the certificate.
  /// [thumbprint] Thumbprint of the certificate.
  const CertificateResponse({
    this.createdDate,
    this.effectiveAt,
    this.enhancedKeyUsage,
    this.expiryDate,
    this.failureReason,
    this.reason,
    this.remarks,
    this.requestedAt,
    this.serialNumber,
    required this.status,
    this.subjectName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'effectiveAt': ?effectiveAt,
      'enhancedKeyUsage': ?enhancedKeyUsage,
      'expiryDate': ?expiryDate,
      'failureReason': ?failureReason,
      'reason': ?reason,
      'remarks': ?remarks,
      'requestedAt': ?requestedAt,
      'serialNumber': ?serialNumber,
      'status': status,
      'subjectName': ?subjectName,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAt: (() { final guardedValue = map['effectiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enhancedKeyUsage: (() { final guardedValue = map['enhancedKeyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryDate: (() { final guardedValue = map['expiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remarks: (() { final guardedValue = map['remarks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedAt: (() { final guardedValue = map['requestedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
