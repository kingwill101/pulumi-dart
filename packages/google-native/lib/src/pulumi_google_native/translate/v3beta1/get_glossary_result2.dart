// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_input_config_response2.dart';
import 'language_code_pair_response2.dart';
import 'language_codes_set_response2.dart';

/// Result data returned by getGlossary.
class GetGlossaryResult2 {
  /// When the glossary creation was finished.
  final String endTime;

  /// The number of entries defined in the glossary.
  final int entryCount;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final GlossaryInputConfigResponse2 inputConfig;

  /// Used with equivalent term set glossaries.
  final LanguageCodesSetResponse2 languageCodesSet;

  /// Used with unidirectional glossaries.
  final LanguageCodePairResponse2 languagePair;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final String name;

  /// When CreateGlossary was called.
  final String submitTime;

  GetGlossaryResult2({
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

  factory GetGlossaryResult2.fromMap(Map<String, dynamic> map) {
    return GetGlossaryResult2(
      endTime: map['endTime'] as String,
      entryCount: map['entryCount'] as int,
      inputConfig: GlossaryInputConfigResponse2.fromMap(
          (map['inputConfig'] as Map).cast<String, dynamic>()),
      languageCodesSet: LanguageCodesSetResponse2.fromMap(
          (map['languageCodesSet'] as Map).cast<String, dynamic>()),
      languagePair: LanguageCodePairResponse2.fromMap(
          (map['languagePair'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      submitTime: map['submitTime'] as String,
    );
  }
}
