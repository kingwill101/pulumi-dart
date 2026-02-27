// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response_healthcare_v1beta1.dart';
import 'crypto_hash_config_response_healthcare_v1beta1.dart';
import 'date_shift_config_response_healthcare_v1beta1.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponseHealthcareV1beta1 {
  /// Config for character mask.
  final CharacterMaskConfigResponseHealthcareV1beta1 characterMaskConfig;

  /// Config for crypto hash.
  final CryptoHashConfigResponseHealthcareV1beta1 cryptoHashConfig;

  /// Config for date shift.
  final DateShiftConfigResponseHealthcareV1beta1 dateShiftConfig;

  /// `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  final List<String> infoTypes;

  /// Config for text redaction.
  final Map<String, dynamic> redactConfig;

  /// Config for replace with InfoType.
  final Map<String, dynamic> replaceWithInfoTypeConfig;

  InfoTypeTransformationResponseHealthcareV1beta1({
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

  factory InfoTypeTransformationResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return InfoTypeTransformationResponseHealthcareV1beta1(
      characterMaskConfig: CharacterMaskConfigResponseHealthcareV1beta1.fromMap(
          (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoHashConfig: CryptoHashConfigResponseHealthcareV1beta1.fromMap(
          (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponseHealthcareV1beta1.fromMap(
          (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      infoTypes: (map['infoTypes'] as List).cast<String>(),
      redactConfig: (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceWithInfoTypeConfig:
          (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
