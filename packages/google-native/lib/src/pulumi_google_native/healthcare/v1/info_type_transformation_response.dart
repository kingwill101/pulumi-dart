// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response.dart';
import 'crypto_hash_config_response.dart';
import 'date_shift_config_response.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponse {
  /// Config for character mask.
  final CharacterMaskConfigResponse characterMaskConfig;

  /// Config for crypto hash.
  final CryptoHashConfigResponse cryptoHashConfig;

  /// Config for date shift.
  final DateShiftConfigResponse dateShiftConfig;

  /// InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  final List<String> infoTypes;

  /// Config for text redaction.
  final Map<String, dynamic> redactConfig;

  /// Config for replace with InfoType.
  final Map<String, dynamic> replaceWithInfoTypeConfig;

  InfoTypeTransformationResponse({
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

  factory InfoTypeTransformationResponse.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationResponse(
      characterMaskConfig: CharacterMaskConfigResponse.fromMap(
          (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoHashConfig: CryptoHashConfigResponse.fromMap(
          (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponse.fromMap(
          (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      infoTypes: (map['infoTypes'] as List).cast<String>(),
      redactConfig: (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceWithInfoTypeConfig:
          (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
