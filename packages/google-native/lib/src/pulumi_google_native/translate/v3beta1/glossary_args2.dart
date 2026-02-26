// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'glossary_input_config2.dart';
import 'language_code_pair2.dart';
import 'language_codes_set2.dart';

/// The set of arguments for Glossary.
class GlossaryArgs2 {
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final Input<GlossaryInputConfig2> inputConfig;

  /// Used with equivalent term set glossaries.
  final Input<LanguageCodesSet2>? languageCodesSet;

  /// Used with unidirectional glossaries.
  final Input<LanguageCodePair2>? languagePair;
  final Input<String>? location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final Input<String>? name;
  final Input<String>? project;

  GlossaryArgs2({
    required this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputConfig'] =
        Input.mapInputValue<GlossaryInputConfig2, Map<String, dynamic>>(
            inputConfig, (value) => value.toMap());
    final languageCodesSetValue = languageCodesSet;
    if (languageCodesSetValue != null) {
      map['languageCodesSet'] =
          Input.mapOptionalInputValue<LanguageCodesSet2, Map<String, dynamic>>(
              languageCodesSetValue, (value) => value.toMap());
    }
    final languagePairValue = languagePair;
    if (languagePairValue != null) {
      map['languagePair'] =
          Input.mapOptionalInputValue<LanguageCodePair2, Map<String, dynamic>>(
              languagePairValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GlossaryArgs2.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs2(
      inputConfig: Input.asInput<GlossaryInputConfig2>(map['inputConfig']),
      languageCodesSet:
          Input.asOptionalInput<LanguageCodesSet2>(map['languageCodesSet']),
      languagePair:
          Input.asOptionalInput<LanguageCodePair2>(map['languagePair']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
