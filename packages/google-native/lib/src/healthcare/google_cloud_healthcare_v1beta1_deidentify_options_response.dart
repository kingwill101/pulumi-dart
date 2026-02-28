// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response_healthcare_v1beta1.dart';
import 'crypto_hash_config_response_healthcare_v1beta1.dart';
import 'date_shift_config_response_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse {
  /// Character mask config for CharacterMaskField.
  final CharacterMaskConfigResponseHealthcareV1beta1 characterMaskConfig;
  /// Configure contextual de-id.
  final Map<String, dynamic> contextualDeid;
  /// Crypto hash config for CharacterMaskField.
  final CryptoHashConfigResponseHealthcareV1beta1 cryptoHashConfig;
  /// Date shifting config for CharacterMaskField.
  final DateShiftConfigResponseHealthcareV1beta1 dateShiftConfig;
  /// Configure keeping extensions by default.
  final Map<String, dynamic> keepExtensions;

  /// Creates a new [GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse].
  /// [characterMaskConfig] Character mask config for CharacterMaskField.
  /// [contextualDeid] Configure contextual de-id.
  /// [cryptoHashConfig] Crypto hash config for CharacterMaskField.
  /// [dateShiftConfig] Date shifting config for CharacterMaskField.
  /// [keepExtensions] Configure keeping extensions by default.
  GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse({
    required this.characterMaskConfig,
    required this.contextualDeid,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.keepExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': characterMaskConfig.toMap(),
      'contextualDeid': contextualDeid,
      'cryptoHashConfig': cryptoHashConfig.toMap(),
      'dateShiftConfig': dateShiftConfig.toMap(),
      'keepExtensions': keepExtensions,
    };
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse(
      characterMaskConfig: CharacterMaskConfigResponseHealthcareV1beta1.fromMap((map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      contextualDeid: (map['contextualDeid'] as Map).cast<String, dynamic>(),
      cryptoHashConfig: CryptoHashConfigResponseHealthcareV1beta1.fromMap((map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponseHealthcareV1beta1.fromMap((map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      keepExtensions: (map['keepExtensions'] as Map).cast<String, dynamic>(),
    );
  }
}

