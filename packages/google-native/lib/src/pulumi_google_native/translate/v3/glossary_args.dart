// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_input_config.dart';
import 'language_code_pair.dart';
import 'language_codes_set.dart';

/// The set of arguments for Glossary.
class GlossaryArgs {
  /// Optional. The display name of the glossary.
  final pulumi.Input<String>? displayName;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  final pulumi.Input<GlossaryInputConfig> inputConfig;

  /// Used with equivalent term set glossaries.
  final pulumi.Input<LanguageCodesSet>? languageCodesSet;

  /// Used with unidirectional glossaries.
  final pulumi.Input<LanguageCodePair>? languagePair;
  final pulumi.Input<String>? location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  GlossaryArgs({
    this.displayName,
    required this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['inputConfig'] =
        pulumi.Input.mapInputValue<GlossaryInputConfig, Map<String, dynamic>>(
            inputConfig, (value) => value.toMap());
    final languageCodesSetValue = languageCodesSet;
    if (languageCodesSetValue != null) {
      map['languageCodesSet'] = pulumi.Input.mapOptionalInputValue<
              LanguageCodesSet, Map<String, dynamic>>(
          languageCodesSetValue, (value) => value.toMap());
    }
    final languagePairValue = languagePair;
    if (languagePairValue != null) {
      map['languagePair'] = pulumi.Input.mapOptionalInputValue<LanguageCodePair,
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

  factory GlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inputConfig:
          pulumi.Input.asInput<GlossaryInputConfig>(map['inputConfig']),
      languageCodesSet: pulumi.Input.asOptionalInput<LanguageCodesSet>(
          map['languageCodesSet']),
      languagePair:
          pulumi.Input.asOptionalInput<LanguageCodePair>(map['languagePair']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
