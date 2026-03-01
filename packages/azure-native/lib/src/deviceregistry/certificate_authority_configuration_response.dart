// ignore_for_file: unused_element, unnecessary_cast


/// The configuration to set up an ICA.
class CertificateAuthorityConfigurationResponse {
  /// Crypto type: ECC.
  final String keyType;
  /// Certificate subject.
  final String subject;
  /// Certificate is valid not after this date. Format ISO8601. Generated based on validity period.
  final String validityNotAfter;
  /// Certificate is valid not before this date. Format ISO8601. Generated based on on validity period.
  final String validityNotBefore;

  /// Creates a new [CertificateAuthorityConfigurationResponse].
  /// [keyType] Crypto type: ECC.
  /// [subject] Certificate subject.
  /// [validityNotAfter] Certificate is valid not after this date. Format ISO8601. Generated based on validity period.
  /// [validityNotBefore] Certificate is valid not before this date. Format ISO8601. Generated based on on validity period.
  CertificateAuthorityConfigurationResponse({
    required this.keyType,
    required this.subject,
    required this.validityNotAfter,
    required this.validityNotBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': keyType,
      'subject': subject,
      'validityNotAfter': validityNotAfter,
      'validityNotBefore': validityNotBefore,
    };
  }

  factory CertificateAuthorityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityConfigurationResponse(
      keyType: map['keyType'] as String,
      subject: map['subject'] as String,
      validityNotAfter: map['validityNotAfter'] as String,
      validityNotBefore: map['validityNotBefore'] as String,
    );
  }
}

