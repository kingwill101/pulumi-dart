// ignore_for_file: unused_element, unnecessary_cast

class GetVoicesVoice {
  /// Additional codes for languages available for the specified voice in addition to its default language.
  final List<String> additionalLanguageCodes;

  /// Gender of the voice.
  final String gender;

  /// Amazon Polly assigned voice ID.
  final String id;

  /// Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  final String languageCode;

  /// Human readable name of the language in English.
  final String languageName;

  /// Name of the voice.
  final String name;

  /// Specifies which engines are supported by a given voice.
  final List<String> supportedEngines;

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
    final map = <String, dynamic>{};
    map['additionalLanguageCodes'] = additionalLanguageCodes;
    map['gender'] = gender;
    map['id'] = id;
    map['languageCode'] = languageCode;
    map['languageName'] = languageName;
    map['name'] = name;
    map['supportedEngines'] = supportedEngines;
    return map;
  }

  factory GetVoicesVoice.fromMap(Map<String, dynamic> map) {
    return GetVoicesVoice(
      additionalLanguageCodes:
          (map['additionalLanguageCodes'] as List).cast<String>(),
      gender: map['gender'] as String,
      id: map['id'] as String,
      languageCode: map['languageCode'] as String,
      languageName: map['languageName'] as String,
      name: map['name'] as String,
      supportedEngines: (map['supportedEngines'] as List).cast<String>(),
    );
  }
}
