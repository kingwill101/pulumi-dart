// ignore_for_file: unused_element, unnecessary_cast


/// Encryption details for the fabric.
class EncryptionDetailsResponse {
  /// The key encryption key certificate expiry date.
  final String? kekCertExpiryDate;
  /// The key encryption key certificate thumbprint.
  final String? kekCertThumbprint;
  /// The key encryption key state for the Vmm.
  final String? kekState;

  /// Creates a new [EncryptionDetailsResponse].
  /// [kekCertExpiryDate] The key encryption key certificate expiry date.
  /// [kekCertThumbprint] The key encryption key certificate thumbprint.
  /// [kekState] The key encryption key state for the Vmm.
  EncryptionDetailsResponse({
    this.kekCertExpiryDate,
    this.kekCertThumbprint,
    this.kekState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekCertExpiryDate': ?kekCertExpiryDate,
      'kekCertThumbprint': ?kekCertThumbprint,
      'kekState': ?kekState,
    };
  }

  factory EncryptionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionDetailsResponse(
      kekCertExpiryDate: map['kekCertExpiryDate'] == null ? null : map['kekCertExpiryDate'] as String,
      kekCertThumbprint: map['kekCertThumbprint'] == null ? null : map['kekCertThumbprint'] as String,
      kekState: map['kekState'] == null ? null : map['kekState'] as String,
    );
  }
}

