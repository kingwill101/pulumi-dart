// ignore_for_file: unused_element, unnecessary_cast

import 'crypto_key_version_template_algorithm.dart';
import 'crypto_key_version_template_protection_level.dart';

/// A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.
class CryptoKeyVersionTemplate {
  /// Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  final CryptoKeyVersionTemplateAlgorithm algorithm;

  /// ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  final CryptoKeyVersionTemplateProtectionLevel? protectionLevel;

  /// Creates a new [CryptoKeyVersionTemplate].
  /// [algorithm] Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  /// [protectionLevel] ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  CryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm.value;
    final protectionLevelValue = protectionLevel;
    if (protectionLevelValue != null) {
      map['protectionLevel'] = protectionLevelValue.value;
    }
    return map;
  }

  factory CryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionTemplate(
      algorithm: CryptoKeyVersionTemplateAlgorithm.fromValue(
          map['algorithm'] as String),
      protectionLevel: map['protectionLevel'] == null
          ? null
          : CryptoKeyVersionTemplateProtectionLevel.fromValue(
              map['protectionLevel'] as String),
    );
  }
}
