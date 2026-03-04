// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVoicesVoice {
  /// Additional codes for languages available for the specified voice in addition to its default language.
  final pulumi.Input<List<String>> additionalLanguageCodes;

  /// Gender of the voice.
  final pulumi.Input<String> gender;

  /// Amazon Polly assigned voice ID.
  final pulumi.Input<String> id;

  /// Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  final pulumi.Input<String> languageCode;

  /// Human readable name of the language in English.
  final pulumi.Input<String> languageName;

  /// Name of the voice.
  final pulumi.Input<String> name;

  /// Specifies which engines are supported by a given voice.
  final pulumi.Input<List<String>> supportedEngines;

  /// Creates a new [GetVoicesVoice].
  /// [additionalLanguageCodes] Additional codes for languages available for the specified voice in addition to its default language.
  /// [gender] Gender of the voice.
  /// [id] Amazon Polly assigned voice ID.
  /// [languageCode] Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  /// [languageName] Human readable name of the language in English.
  /// [name] Name of the voice.
  /// [supportedEngines] Specifies which engines are supported by a given voice.
  GetVoicesVoice({
    required this.additionalLanguageCodes,
    required this.gender,
    required this.id,
    required this.languageCode,
    required this.languageName,
    required this.name,
    required this.supportedEngines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLanguageCodes': additionalLanguageCodes,
      'gender': gender,
      'id': id,
      'languageCode': languageCode,
      'languageName': languageName,
      'name': name,
      'supportedEngines': supportedEngines,
    };
  }

  factory GetVoicesVoice.fromMap(Map<String, dynamic> map) {
    return GetVoicesVoice(
      additionalLanguageCodes: pulumi.Input.fromValue(
        (map['additionalLanguageCodes'] as List).cast<String>(),
      ),
      gender: pulumi.Input.fromValue(map['gender'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageName: pulumi.Input.fromValue(map['languageName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedEngines: pulumi.Input.fromValue(
        (map['supportedEngines'] as List).cast<String>(),
      ),
    );
  }
}
