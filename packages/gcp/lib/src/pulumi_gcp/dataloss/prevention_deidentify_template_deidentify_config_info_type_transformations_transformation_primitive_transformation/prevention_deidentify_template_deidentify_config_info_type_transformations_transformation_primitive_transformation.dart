// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_character_mask_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_character_mask_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_deterministic_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_deterministic_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_hash_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_hash_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_date_shift_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_date_shift_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_replace_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_replace_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_replace_dictionary_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_replace_dictionary_config.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_time_part_config/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_time_part_config.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation {
  /// Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 > LOW 31-65 > MEDIUM 66-100 > HIGH
  /// This can be used on data of type: number, long, string, timestamp.
  /// If the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
  /// See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig?
      bucketingConfig;

  /// Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3).
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig?
      characterMaskConfig;

  /// Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297).
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfig?
      cryptoDeterministicConfig;

  /// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
  /// Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).
  /// Currently, only string and integer values can be hashed.
  /// See https://cloud.google.com/dlp/docs/pseudonymization to learn more.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig?
      cryptoHashConfig;

  /// Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `content.reidentify` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.
  /// Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig?
      cryptoReplaceFfxFpeConfig;

  /// Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig?
      dateShiftConfig;

  /// Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.
  /// The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with "10-20".
  /// This can be used on data of type: double, long.
  /// If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
  /// See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig?
      fixedSizeBucketingConfig;

  /// Redact a given value. For example, if used with an InfoTypeTransformation transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would be 'My phone number is '.
  final Map<String, dynamic>? redactConfig;

  /// Replace each input value with a given value.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig?
      replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceDictionaryConfig?
      replaceDictionaryConfig;

  /// Replace each matching finding with the name of the info type.
  final bool? replaceWithInfoTypeConfig;

  /// For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig?
      timePartConfig;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation({
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

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation(
      bucketingConfig: map['bucketingConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig
              .fromMap((map['bucketingConfig'] as Map).cast<String, dynamic>()),
      characterMaskConfig: map['characterMaskConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig
              .fromMap(
                  (map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoDeterministicConfig: map['cryptoDeterministicConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfig
              .fromMap((map['cryptoDeterministicConfig'] as Map)
                  .cast<String, dynamic>()),
      cryptoHashConfig: map['cryptoHashConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig
              .fromMap(
                  (map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      cryptoReplaceFfxFpeConfig: map['cryptoReplaceFfxFpeConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig
              .fromMap((map['cryptoReplaceFfxFpeConfig'] as Map)
                  .cast<String, dynamic>()),
      dateShiftConfig: map['dateShiftConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig
              .fromMap((map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      fixedSizeBucketingConfig: map['fixedSizeBucketingConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig
              .fromMap((map['fixedSizeBucketingConfig'] as Map)
                  .cast<String, dynamic>()),
      redactConfig: map['redactConfig'] == null
          ? null
          : (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceConfig: map['replaceConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig
              .fromMap((map['replaceConfig'] as Map).cast<String, dynamic>()),
      replaceDictionaryConfig: map['replaceDictionaryConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceDictionaryConfig
              .fromMap((map['replaceDictionaryConfig'] as Map)
                  .cast<String, dynamic>()),
      replaceWithInfoTypeConfig: map['replaceWithInfoTypeConfig'] == null
          ? null
          : map['replaceWithInfoTypeConfig'] as bool,
      timePartConfig: map['timePartConfig'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig
              .fromMap((map['timePartConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
