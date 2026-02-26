// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config2.dart';
import 'crypto_hash_config2.dart';
import 'date_shift_config2.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptions {
  /// Character mask config for CharacterMaskField.
  final CharacterMaskConfig2? characterMaskConfig;

  /// Configure contextual de-id.
  final Map<String, dynamic>? contextualDeid;

  /// Crypto hash config for CharacterMaskField.
  final CryptoHashConfig2? cryptoHashConfig;

  /// Date shifting config for CharacterMaskField.
  final DateShiftConfig2? dateShiftConfig;

  /// Configure keeping extensions by default.
  final Map<String, dynamic>? keepExtensions;

  GoogleCloudHealthcareV1beta1DeidentifyOptions({
    this.characterMaskConfig,
    this.contextualDeid,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.keepExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final characterMaskConfigValue = characterMaskConfig;
    if (characterMaskConfigValue != null) {
      map['characterMaskConfig'] = characterMaskConfigValue.toMap();
    }
    final contextualDeidValue = contextualDeid;
    if (contextualDeidValue != null) {
      map['contextualDeid'] = contextualDeidValue;
    }
    final cryptoHashConfigValue = cryptoHashConfig;
    if (cryptoHashConfigValue != null) {
      map['cryptoHashConfig'] = cryptoHashConfigValue.toMap();
    }
    final dateShiftConfigValue = dateShiftConfig;
    if (dateShiftConfigValue != null) {
      map['dateShiftConfig'] = dateShiftConfigValue.toMap();
    }
    final keepExtensionsValue = keepExtensions;
    if (keepExtensionsValue != null) {
      map['keepExtensions'] = keepExtensionsValue;
    }
    return map;
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptions(
      characterMaskConfig: map['characterMaskConfig'] == null
          ? null
          : CharacterMaskConfig2.fromMap(
              (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      contextualDeid: map['contextualDeid'] == null
          ? null
          : (map['contextualDeid'] as Map).cast<String, dynamic>(),
      cryptoHashConfig: map['cryptoHashConfig'] == null
          ? null
          : CryptoHashConfig2.fromMap(
              (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: map['dateShiftConfig'] == null
          ? null
          : DateShiftConfig2.fromMap(
              (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      keepExtensions: map['keepExtensions'] == null
          ? null
          : (map['keepExtensions'] as Map).cast<String, dynamic>(),
    );
  }
}
