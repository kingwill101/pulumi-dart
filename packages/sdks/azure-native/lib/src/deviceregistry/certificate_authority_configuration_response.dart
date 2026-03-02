// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration to set up an ICA.
class CertificateAuthorityConfigurationResponse {
  /// Crypto type: ECC.
  final pulumi.Input<String> keyType;
  /// Certificate subject.
  final pulumi.Input<String> subject;
  /// Certificate is valid not after this date. Format ISO8601. Generated based on validity period.
  final pulumi.Input<String> validityNotAfter;
  /// Certificate is valid not before this date. Format ISO8601. Generated based on on validity period.
  final pulumi.Input<String> validityNotBefore;

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
      keyType: (map['keyType'] as String).input(),
      subject: (map['subject'] as String).input(),
      validityNotAfter: (map['validityNotAfter'] as String).input(),
      validityNotBefore: (map['validityNotBefore'] as String).input(),
    );
  }
}

