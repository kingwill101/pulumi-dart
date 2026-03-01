// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the certificate.
class CertificateResponse {
  /// Certificate created date.
  final String? createdDate;
  /// The timestamp when the revocation is effective.
  final String? effectiveAt;
  /// Enhanced key usage of the certificate.
  final String? enhancedKeyUsage;
  /// Certificate expiry date.
  final String? expiryDate;
  /// Reason for the revocation failure.
  final String? failureReason;
  /// Reason for revocation.
  final String? reason;
  /// Remarks for the revocation.
  final String? remarks;
  /// The timestamp when the revocation is requested.
  final String? requestedAt;
  /// Serial number of the certificate.
  final String? serialNumber;
  /// Status of the certificate.
  final String status;
  /// Subject name of the certificate.
  final String? subjectName;
  /// Thumbprint of the certificate.
  final String? thumbprint;

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
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      effectiveAt: map['effectiveAt'] == null ? null : map['effectiveAt'] as String,
      enhancedKeyUsage: map['enhancedKeyUsage'] == null ? null : map['enhancedKeyUsage'] as String,
      expiryDate: map['expiryDate'] == null ? null : map['expiryDate'] as String,
      failureReason: map['failureReason'] == null ? null : map['failureReason'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      remarks: map['remarks'] == null ? null : map['remarks'] as String,
      requestedAt: map['requestedAt'] == null ? null : map['requestedAt'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      status: map['status'] as String,
      subjectName: map['subjectName'] == null ? null : map['subjectName'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

