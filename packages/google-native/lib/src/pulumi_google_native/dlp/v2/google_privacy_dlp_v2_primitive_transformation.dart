// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_bucketing_config.dart';
import 'google_privacy_dlp_v2_character_mask_config.dart';
import 'google_privacy_dlp_v2_crypto_deterministic_config.dart';
import 'google_privacy_dlp_v2_crypto_hash_config.dart';
import 'google_privacy_dlp_v2_crypto_replace_ffx_fpe_config.dart';
import 'google_privacy_dlp_v2_date_shift_config.dart';
import 'google_privacy_dlp_v2_fixed_size_bucketing_config.dart';
import 'google_privacy_dlp_v2_replace_dictionary_config.dart';
import 'google_privacy_dlp_v2_replace_value_config.dart';
import 'google_privacy_dlp_v2_time_part_config.dart';

/// A rule for transforming a value.
class GooglePrivacyDlpV2PrimitiveTransformation {
  /// Bucketing
  final GooglePrivacyDlpV2BucketingConfig? bucketingConfig;

  /// Mask
  final GooglePrivacyDlpV2CharacterMaskConfig? characterMaskConfig;

  /// Deterministic Crypto
  final GooglePrivacyDlpV2CryptoDeterministicConfig? cryptoDeterministicConfig;

  /// Crypto
  final GooglePrivacyDlpV2CryptoHashConfig? cryptoHashConfig;

  /// Ffx-Fpe
  final GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig? cryptoReplaceFfxFpeConfig;

  /// Date Shift
  final GooglePrivacyDlpV2DateShiftConfig? dateShiftConfig;

  /// Fixed size bucketing
  final GooglePrivacyDlpV2FixedSizeBucketingConfig? fixedSizeBucketingConfig;

  /// Redact
  final Map<String, dynamic>? redactConfig;

  /// Replace with a specified value.
  final GooglePrivacyDlpV2ReplaceValueConfig? replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  final GooglePrivacyDlpV2ReplaceDictionaryConfig? replaceDictionaryConfig;

  /// Replace with infotype
  final Map<String, dynamic>? replaceWithInfoTypeConfig;

  /// Time extraction
  final GooglePrivacyDlpV2TimePartConfig? timePartConfig;

  GooglePrivacyDlpV2PrimitiveTransformation({
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.replaceWithInfoTypeConfig,
    this.timePartConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketingConfigValue = bucketingConfig;
    if (bucketingConfigValue != null) {
      map['bucketingConfig'] = bucketingConfigValue.toMap();
    }
    final characterMaskConfigValue = characterMaskConfig;
    if (characterMaskConfigValue != null) {
      map['characterMaskConfig'] = characterMaskConfigValue.toMap();
    }
    final cryptoDeterministicConfigValue = cryptoDeterministicConfig;
    if (cryptoDeterministicConfigValue != null) {
      map['cryptoDeterministicConfig'] = cryptoDeterministicConfigValue.toMap();
    }
    final cryptoHashConfigValue = cryptoHashConfig;
    if (cryptoHashConfigValue != null) {
      map['cryptoHashConfig'] = cryptoHashConfigValue.toMap();
    }
    final cryptoReplaceFfxFpeConfigValue = cryptoReplaceFfxFpeConfig;
    if (cryptoReplaceFfxFpeConfigValue != null) {
      map['cryptoReplaceFfxFpeConfig'] = cryptoReplaceFfxFpeConfigValue.toMap();
    }
    final dateShiftConfigValue = dateShiftConfig;
    if (dateShiftConfigValue != null) {
      map['dateShiftConfig'] = dateShiftConfigValue.toMap();
    }
    final fixedSizeBucketingConfigValue = fixedSizeBucketingConfig;
    if (fixedSizeBucketingConfigValue != null) {
      map['fixedSizeBucketingConfig'] = fixedSizeBucketingConfigValue.toMap();
    }
    final redactConfigValue = redactConfig;
    if (redactConfigValue != null) {
      map['redactConfig'] = redactConfigValue;
    }
    final replaceConfigValue = replaceConfig;
    if (replaceConfigValue != null) {
      map['replaceConfig'] = replaceConfigValue.toMap();
    }
    final replaceDictionaryConfigValue = replaceDictionaryConfig;
    if (replaceDictionaryConfigValue != null) {
      map['replaceDictionaryConfig'] = replaceDictionaryConfigValue.toMap();
    }
    final replaceWithInfoTypeConfigValue = replaceWithInfoTypeConfig;
    if (replaceWithInfoTypeConfigValue != null) {
      map['replaceWithInfoTypeConfig'] = replaceWithInfoTypeConfigValue;
    }
    final timePartConfigValue = timePartConfig;
    if (timePartConfigValue != null) {
      map['timePartConfig'] = timePartConfigValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2PrimitiveTransformation.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrimitiveTransformation(
      bucketingConfig: map['bucketingConfig'] == null
          ? null
          : GooglePrivacyDlpV2BucketingConfig.fromMap(
              (map['bucketingConfig'] as Map).cast<String, dynamic>()),
      characterMaskConfig: map['characterMaskConfig'] == null
          ? null
          : GooglePrivacyDlpV2CharacterMaskConfig.fromMap(
              (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoDeterministicConfig: map['cryptoDeterministicConfig'] == null
          ? null
          : GooglePrivacyDlpV2CryptoDeterministicConfig.fromMap(
              (map['cryptoDeterministicConfig'] as Map)
                  .cast<String, dynamic>()),
      cryptoHashConfig: map['cryptoHashConfig'] == null
          ? null
          : GooglePrivacyDlpV2CryptoHashConfig.fromMap(
              (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      cryptoReplaceFfxFpeConfig: map['cryptoReplaceFfxFpeConfig'] == null
          ? null
          : GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromMap(
              (map['cryptoReplaceFfxFpeConfig'] as Map)
                  .cast<String, dynamic>()),
      dateShiftConfig: map['dateShiftConfig'] == null
          ? null
          : GooglePrivacyDlpV2DateShiftConfig.fromMap(
              (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      fixedSizeBucketingConfig: map['fixedSizeBucketingConfig'] == null
          ? null
          : GooglePrivacyDlpV2FixedSizeBucketingConfig.fromMap(
              (map['fixedSizeBucketingConfig'] as Map).cast<String, dynamic>()),
      redactConfig: map['redactConfig'] == null
          ? null
          : (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceConfig: map['replaceConfig'] == null
          ? null
          : GooglePrivacyDlpV2ReplaceValueConfig.fromMap(
              (map['replaceConfig'] as Map).cast<String, dynamic>()),
      replaceDictionaryConfig: map['replaceDictionaryConfig'] == null
          ? null
          : GooglePrivacyDlpV2ReplaceDictionaryConfig.fromMap(
              (map['replaceDictionaryConfig'] as Map).cast<String, dynamic>()),
      replaceWithInfoTypeConfig: map['replaceWithInfoTypeConfig'] == null
          ? null
          : (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
      timePartConfig: map['timePartConfig'] == null
          ? null
          : GooglePrivacyDlpV2TimePartConfig.fromMap(
              (map['timePartConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
