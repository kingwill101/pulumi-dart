// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response2.dart';
import 'crypto_hash_config_response2.dart';
import 'date_shift_config_response2.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponse2 {
  /// Config for character mask.
  final CharacterMaskConfigResponse2 characterMaskConfig;

  /// Config for crypto hash.
  final CryptoHashConfigResponse2 cryptoHashConfig;

  /// Config for date shift.
  final DateShiftConfigResponse2 dateShiftConfig;

  /// `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  final List<String> infoTypes;

  /// Config for text redaction.
  final Map<String, dynamic> redactConfig;

  /// Config for replace with InfoType.
  final Map<String, dynamic> replaceWithInfoTypeConfig;

  InfoTypeTransformationResponse2({
    required this.characterMaskConfig,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.infoTypes,
    required this.redactConfig,
    required this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['characterMaskConfig'] = characterMaskConfig.toMap();
    map['cryptoHashConfig'] = cryptoHashConfig.toMap();
    map['dateShiftConfig'] = dateShiftConfig.toMap();
    map['infoTypes'] = infoTypes;
    map['redactConfig'] = redactConfig;
    map['replaceWithInfoTypeConfig'] = replaceWithInfoTypeConfig;
    return map;
  }

  factory InfoTypeTransformationResponse2.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationResponse2(
      characterMaskConfig: CharacterMaskConfigResponse2.fromMap(
          (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoHashConfig: CryptoHashConfigResponse2.fromMap(
          (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponse2.fromMap(
          (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      infoTypes: (map['infoTypes'] as List).cast<String>(),
      redactConfig: (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceWithInfoTypeConfig:
          (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
