// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_bucketing_config_response.dart';
import 'google_privacy_dlp_v2_character_mask_config_response.dart';
import 'google_privacy_dlp_v2_crypto_deterministic_config_response.dart';
import 'google_privacy_dlp_v2_crypto_hash_config_response.dart';
import 'google_privacy_dlp_v2_crypto_replace_ffx_fpe_config_response.dart';
import 'google_privacy_dlp_v2_date_shift_config_response.dart';
import 'google_privacy_dlp_v2_fixed_size_bucketing_config_response.dart';
import 'google_privacy_dlp_v2_replace_dictionary_config_response.dart';
import 'google_privacy_dlp_v2_replace_value_config_response.dart';
import 'google_privacy_dlp_v2_time_part_config_response.dart';

/// A rule for transforming a value.
class GooglePrivacyDlpV2PrimitiveTransformationResponse {
  /// Bucketing
  final GooglePrivacyDlpV2BucketingConfigResponse bucketingConfig;

  /// Mask
  final GooglePrivacyDlpV2CharacterMaskConfigResponse characterMaskConfig;

  /// Deterministic Crypto
  final GooglePrivacyDlpV2CryptoDeterministicConfigResponse
      cryptoDeterministicConfig;

  /// Crypto
  final GooglePrivacyDlpV2CryptoHashConfigResponse cryptoHashConfig;

  /// Ffx-Fpe
  final GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse
      cryptoReplaceFfxFpeConfig;

  /// Date Shift
  final GooglePrivacyDlpV2DateShiftConfigResponse dateShiftConfig;

  /// Fixed size bucketing
  final GooglePrivacyDlpV2FixedSizeBucketingConfigResponse
      fixedSizeBucketingConfig;

  /// Redact
  final Map<String, dynamic> redactConfig;

  /// Replace with a specified value.
  final GooglePrivacyDlpV2ReplaceValueConfigResponse replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  final GooglePrivacyDlpV2ReplaceDictionaryConfigResponse
      replaceDictionaryConfig;

  /// Replace with infotype
  final Map<String, dynamic> replaceWithInfoTypeConfig;

  /// Time extraction
  final GooglePrivacyDlpV2TimePartConfigResponse timePartConfig;

  /// Creates a new [GooglePrivacyDlpV2PrimitiveTransformationResponse].
  /// [bucketingConfig] Bucketing
  /// [characterMaskConfig] Mask
  /// [cryptoDeterministicConfig] Deterministic Crypto
  /// [cryptoHashConfig] Crypto
  /// [cryptoReplaceFfxFpeConfig] Ffx-Fpe
  /// [dateShiftConfig] Date Shift
  /// [fixedSizeBucketingConfig] Fixed size bucketing
  /// [redactConfig] Redact
  /// [replaceConfig] Replace with a specified value.
  /// [replaceDictionaryConfig] Replace with a value randomly drawn (with replacement) from a dictionary.
  /// [replaceWithInfoTypeConfig] Replace with infotype
  /// [timePartConfig] Time extraction
  GooglePrivacyDlpV2PrimitiveTransformationResponse({
    required this.bucketingConfig,
    required this.characterMaskConfig,
    required this.cryptoDeterministicConfig,
    required this.cryptoHashConfig,
    required this.cryptoReplaceFfxFpeConfig,
    required this.dateShiftConfig,
    required this.fixedSizeBucketingConfig,
    required this.redactConfig,
    required this.replaceConfig,
    required this.replaceDictionaryConfig,
    required this.replaceWithInfoTypeConfig,
    required this.timePartConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketingConfig'] = bucketingConfig.toMap();
    map['characterMaskConfig'] = characterMaskConfig.toMap();
    map['cryptoDeterministicConfig'] = cryptoDeterministicConfig.toMap();
    map['cryptoHashConfig'] = cryptoHashConfig.toMap();
    map['cryptoReplaceFfxFpeConfig'] = cryptoReplaceFfxFpeConfig.toMap();
    map['dateShiftConfig'] = dateShiftConfig.toMap();
    map['fixedSizeBucketingConfig'] = fixedSizeBucketingConfig.toMap();
    map['redactConfig'] = redactConfig;
    map['replaceConfig'] = replaceConfig.toMap();
    map['replaceDictionaryConfig'] = replaceDictionaryConfig.toMap();
    map['replaceWithInfoTypeConfig'] = replaceWithInfoTypeConfig;
    map['timePartConfig'] = timePartConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2PrimitiveTransformationResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrimitiveTransformationResponse(
      bucketingConfig: GooglePrivacyDlpV2BucketingConfigResponse.fromMap(
          (map['bucketingConfig'] as Map).cast<String, dynamic>()),
      characterMaskConfig:
          GooglePrivacyDlpV2CharacterMaskConfigResponse.fromMap(
              (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoDeterministicConfig:
          GooglePrivacyDlpV2CryptoDeterministicConfigResponse.fromMap(
              (map['cryptoDeterministicConfig'] as Map)
                  .cast<String, dynamic>()),
      cryptoHashConfig: GooglePrivacyDlpV2CryptoHashConfigResponse.fromMap(
          (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      cryptoReplaceFfxFpeConfig:
          GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse.fromMap(
              (map['cryptoReplaceFfxFpeConfig'] as Map)
                  .cast<String, dynamic>()),
      dateShiftConfig: GooglePrivacyDlpV2DateShiftConfigResponse.fromMap(
          (map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      fixedSizeBucketingConfig:
          GooglePrivacyDlpV2FixedSizeBucketingConfigResponse.fromMap(
              (map['fixedSizeBucketingConfig'] as Map).cast<String, dynamic>()),
      redactConfig: (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceConfig: GooglePrivacyDlpV2ReplaceValueConfigResponse.fromMap(
          (map['replaceConfig'] as Map).cast<String, dynamic>()),
      replaceDictionaryConfig:
          GooglePrivacyDlpV2ReplaceDictionaryConfigResponse.fromMap(
              (map['replaceDictionaryConfig'] as Map).cast<String, dynamic>()),
      replaceWithInfoTypeConfig:
          (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
      timePartConfig: GooglePrivacyDlpV2TimePartConfigResponse.fromMap(
          (map['timePartConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
