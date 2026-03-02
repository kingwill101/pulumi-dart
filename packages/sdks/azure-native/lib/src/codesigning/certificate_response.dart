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
  CertificateResponse({
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
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      effectiveAt: map['effectiveAt'] == null ? null : (map['effectiveAt'] as String).input(),
      enhancedKeyUsage: map['enhancedKeyUsage'] == null ? null : (map['enhancedKeyUsage'] as String).input(),
      expiryDate: map['expiryDate'] == null ? null : (map['expiryDate'] as String).input(),
      failureReason: map['failureReason'] == null ? null : (map['failureReason'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      remarks: map['remarks'] == null ? null : (map['remarks'] as String).input(),
      requestedAt: map['requestedAt'] == null ? null : (map['requestedAt'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      status: (map['status'] as String).input(),
      subjectName: map['subjectName'] == null ? null : (map['subjectName'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

