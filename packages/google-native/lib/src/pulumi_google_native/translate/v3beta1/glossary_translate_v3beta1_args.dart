// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_input_config_translate_v3beta1.dart';
import 'language_code_pair_translate_v3beta1.dart';
import 'language_codes_set_translate_v3beta1.dart';

/// The set of arguments for Glossary.
class GlossaryTranslateV3beta1Args {
  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final pulumi.Input<GlossaryInputConfigTranslateV3beta1> inputConfig;

  /// Used with equivalent term set glossaries.
  final pulumi.Input<LanguageCodesSetTranslateV3beta1>? languageCodesSet;

  /// Used with unidirectional glossaries.
  final pulumi.Input<LanguageCodePairTranslateV3beta1>? languagePair;
  final pulumi.Input<String>? location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  GlossaryTranslateV3beta1Args({
    required this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputConfig'] = pulumi.Input.mapInputValue<
        GlossaryInputConfigTranslateV3beta1,
        Map<String, dynamic>>(inputConfig, (value) => value.toMap());
    final languageCodesSetValue = languageCodesSet;
    if (languageCodesSetValue != null) {
      map['languageCodesSet'] = pulumi.Input.mapOptionalInputValue<
              LanguageCodesSetTranslateV3beta1, Map<String, dynamic>>(
          languageCodesSetValue, (value) => value.toMap());
    }
    final languagePairValue = languagePair;
    if (languagePairValue != null) {
      map['languagePair'] = pulumi.Input.mapOptionalInputValue<
          LanguageCodePairTranslateV3beta1,
          Map<String, dynamic>>(languagePairValue, (value) => value.toMap());
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

  factory GlossaryTranslateV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GlossaryTranslateV3beta1Args(
      inputConfig: pulumi.Input.asInput<GlossaryInputConfigTranslateV3beta1>(
          map['inputConfig']),
      languageCodesSet:
          pulumi.Input.asOptionalInput<LanguageCodesSetTranslateV3beta1>(
              map['languageCodesSet']),
      languagePair:
          pulumi.Input.asOptionalInput<LanguageCodePairTranslateV3beta1>(
              map['languagePair']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
