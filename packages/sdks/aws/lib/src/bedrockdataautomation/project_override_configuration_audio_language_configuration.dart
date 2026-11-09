// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationAudioLanguageConfiguration {
  /// Language of generative output. Valid values: `DEFAULT`, `EN`.
  final pulumi.Input<String?>? generativeOutputLanguage;
  /// Whether to identify multiple languages in a file.
  final pulumi.Input<bool?>? identifyMultipleLanguages;
  /// Set of languages expected in input files. Valid values: `EN`, `DE`, `ES`, `FR`, `IT`, `PT`, `JA`, `KO`, `CN`, `TW`, `HK`.
  final pulumi.Input<List<String>?>? inputLanguages;

  /// Creates a new [ProjectOverrideConfigurationAudioLanguageConfiguration].
  /// [generativeOutputLanguage] Language of generative output. Valid values: `DEFAULT`, `EN`.
  /// [identifyMultipleLanguages] Whether to identify multiple languages in a file.
  /// [inputLanguages] Set of languages expected in input files. Valid values: `EN`, `DE`, `ES`, `FR`, `IT`, `PT`, `JA`, `KO`, `CN`, `TW`, `HK`.
  const ProjectOverrideConfigurationAudioLanguageConfiguration({
    this.generativeOutputLanguage,
    this.identifyMultipleLanguages,
    this.inputLanguages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeOutputLanguage': ?generativeOutputLanguage,
      'identifyMultipleLanguages': ?identifyMultipleLanguages,
      'inputLanguages': ?inputLanguages,
    };
  }

  factory ProjectOverrideConfigurationAudioLanguageConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationAudioLanguageConfiguration(
      generativeOutputLanguage: (() { final guardedValue = map['generativeOutputLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifyMultipleLanguages: (() { final guardedValue = map['identifyMultipleLanguages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputLanguages: (() { final guardedValue = map['inputLanguages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
