// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config2.dart';
import 'crypto_hash_config2.dart';
import 'date_shift_config2.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformation2 {
  /// Config for character mask.
  final CharacterMaskConfig2? characterMaskConfig;

  /// Config for crypto hash.
  final CryptoHashConfig2? cryptoHashConfig;

  /// Config for date shift.
  final DateShiftConfig2? dateShiftConfig;

  /// `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  final List<String>? infoTypes;

  /// Config for text redaction.
  final Map<String, dynamic>? redactConfig;

  /// Config for replace with InfoType.
  final Map<String, dynamic>? replaceWithInfoTypeConfig;

  InfoTypeTransformation2({
    this.characterMaskConfig,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.infoTypes,
    this.redactConfig,
    this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final characterMaskConfigValue = characterMaskConfig;
    if (characterMaskConfigValue != null) {
      map['characterMaskConfig'] = characterMaskConfigValue.toMap();
    }
    final cryptoHashConfigValue = cryptoHashConfig;
    if (cryptoHashConfigValue != null) {
      map['cryptoHashConfig'] = cryptoHashConfigValue.toMap();
    }
    final dateShiftConfigValue = dateShiftConfig;
    if (dateShiftConfigValue != null) {
      map['dateShiftConfig'] = dateShiftConfigValue.toMap();
    }
    final infoTypesValue = infoTypes;
    if (infoTypesValue != null) {
      map['infoTypes'] = infoTypesValue;
    }
    final redactConfigValue = redactConfig;
    if (redactConfigValue != null) {
      map['redactConfig'] = redactConfigValue;
    }
    final replaceWithInfoTypeConfigValue = replaceWithInfoTypeConfig;
    if (replaceWithInfoTypeConfigValue != null) {
      map['replaceWithInfoTypeConfig'] = replaceWithInfoTypeConfigValue;
    }
    return map;
  }

  factory InfoTypeTransformation2.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformation2(
      characterMaskConfig: map['characterMaskConfig'] == null
          ? null
          : CharacterMaskConfig2.fromMap(
              (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoHashConfig: map['cryptoHashConfig'] == null
          ? null
          : CryptoHashConfig2.fromMap(
              (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: map['dateShiftConfig'] == null
          ? null
          : DateShiftConfig2.fromMap(
              (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      infoTypes: map['infoTypes'] == null
          ? null
          : (map['infoTypes'] as List).cast<String>(),
      redactConfig: map['redactConfig'] == null
          ? null
          : (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceWithInfoTypeConfig: map['replaceWithInfoTypeConfig'] == null
          ? null
          : (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
