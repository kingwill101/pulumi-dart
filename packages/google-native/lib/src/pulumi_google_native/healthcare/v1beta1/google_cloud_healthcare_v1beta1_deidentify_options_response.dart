// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response2.dart';
import 'crypto_hash_config_response2.dart';
import 'date_shift_config_response2.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse {
  /// Character mask config for CharacterMaskField.
  final CharacterMaskConfigResponse2 characterMaskConfig;

  /// Configure contextual de-id.
  final Map<String, dynamic> contextualDeid;

  /// Crypto hash config for CharacterMaskField.
  final CryptoHashConfigResponse2 cryptoHashConfig;

  /// Date shifting config for CharacterMaskField.
  final DateShiftConfigResponse2 dateShiftConfig;

  /// Configure keeping extensions by default.
  final Map<String, dynamic> keepExtensions;

  GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse({
    required this.characterMaskConfig,
    required this.contextualDeid,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.keepExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['characterMaskConfig'] = characterMaskConfig.toMap();
    map['contextualDeid'] = contextualDeid;
    map['cryptoHashConfig'] = cryptoHashConfig.toMap();
    map['dateShiftConfig'] = dateShiftConfig.toMap();
    map['keepExtensions'] = keepExtensions;
    return map;
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse(
      characterMaskConfig: CharacterMaskConfigResponse2.fromMap(
          (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      contextualDeid: (map['contextualDeid'] as Map).cast<String, dynamic>(),
      cryptoHashConfig: CryptoHashConfigResponse2.fromMap(
          (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponse2.fromMap(
          (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      keepExtensions: (map['keepExtensions'] as Map).cast<String, dynamic>(),
    );
  }
}
