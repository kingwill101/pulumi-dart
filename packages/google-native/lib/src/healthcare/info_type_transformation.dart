// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config.dart';
import 'crypto_hash_config.dart';
import 'date_shift_config.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformation {
  /// Config for character mask.
  final CharacterMaskConfig? characterMaskConfig;

  /// Config for crypto hash.
  final CryptoHashConfig? cryptoHashConfig;

  /// Config for date shift.
  final DateShiftConfig? dateShiftConfig;

  /// InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  final List<String>? infoTypes;

  /// Config for text redaction.
  final Map<String, dynamic>? redactConfig;

  /// Config for replace with InfoType.
  final Map<String, dynamic>? replaceWithInfoTypeConfig;

  /// Creates a new [InfoTypeTransformation].
  /// [characterMaskConfig] Config for character mask.
  /// [cryptoHashConfig] Config for crypto hash.
  /// [dateShiftConfig] Config for date shift.
  /// [infoTypes] InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  /// [redactConfig] Config for text redaction.
  /// [replaceWithInfoTypeConfig] Config for replace with InfoType.
  InfoTypeTransformation({
    this.characterMaskConfig,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.infoTypes,
    this.redactConfig,
    this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': ?characterMaskConfig == null
          ? null
          : characterMaskConfig!.toMap(),
      'cryptoHashConfig': ?cryptoHashConfig == null
          ? null
          : cryptoHashConfig!.toMap(),
      'dateShiftConfig': ?dateShiftConfig == null
          ? null
          : dateShiftConfig!.toMap(),
      'infoTypes': ?infoTypes,
      'redactConfig': ?redactConfig,
      'replaceWithInfoTypeConfig': ?replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformation.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformation(
      characterMaskConfig: map['characterMaskConfig'] == null
          ? null
          : CharacterMaskConfig.fromMap(
              (map['characterMaskConfig'] as Map).cast<String, dynamic>(),
            ),
      cryptoHashConfig: map['cryptoHashConfig'] == null
          ? null
          : CryptoHashConfig.fromMap(
              (map['cryptoHashConfig'] as Map).cast<String, dynamic>(),
            ),
      dateShiftConfig: map['dateShiftConfig'] == null
          ? null
          : DateShiftConfig.fromMap(
              (map['dateShiftConfig'] as Map).cast<String, dynamic>(),
            ),
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
