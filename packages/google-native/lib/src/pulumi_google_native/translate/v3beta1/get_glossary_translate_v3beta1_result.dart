// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_input_config_response_translate_v3beta1.dart';
import 'language_code_pair_response_translate_v3beta1.dart';
import 'language_codes_set_response_translate_v3beta1.dart';

/// Result data returned by getGlossary.
class GetGlossaryTranslateV3beta1Result {
  /// When the glossary creation was finished.
  final String endTime;

  /// The number of entries defined in the glossary.
  final int entryCount;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final GlossaryInputConfigResponseTranslateV3beta1 inputConfig;

  /// Used with equivalent term set glossaries.
  final LanguageCodesSetResponseTranslateV3beta1 languageCodesSet;

  /// Used with unidirectional glossaries.
  final LanguageCodePairResponseTranslateV3beta1 languagePair;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final String name;

  /// When CreateGlossary was called.
  final String submitTime;

  GetGlossaryTranslateV3beta1Result({
    required this.endTime,
    required this.entryCount,
    required this.inputConfig,
    required this.languageCodesSet,
    required this.languagePair,
    required this.name,
    required this.submitTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['entryCount'] = entryCount;
    map['inputConfig'] = inputConfig.toMap();
    map['languageCodesSet'] = languageCodesSet.toMap();
    map['languagePair'] = languagePair.toMap();
    map['name'] = name;
    map['submitTime'] = submitTime;
    return map;
  }

  factory GetGlossaryTranslateV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGlossaryTranslateV3beta1Result(
      endTime: map['endTime'] as String,
      entryCount: map['entryCount'] as int,
      inputConfig: GlossaryInputConfigResponseTranslateV3beta1.fromMap(
          (map['inputConfig'] as Map).cast<String, dynamic>()),
      languageCodesSet: LanguageCodesSetResponseTranslateV3beta1.fromMap(
          (map['languageCodesSet'] as Map).cast<String, dynamic>()),
      languagePair: LanguageCodePairResponseTranslateV3beta1.fromMap(
          (map['languagePair'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      submitTime: map['submitTime'] as String,
    );
  }
}
