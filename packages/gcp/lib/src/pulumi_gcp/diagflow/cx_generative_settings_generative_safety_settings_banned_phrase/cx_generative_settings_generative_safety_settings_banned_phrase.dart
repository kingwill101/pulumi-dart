// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase {
  /// Language code of the phrase.
  final String languageCode;

  /// Text input which can be used for prompt or banned phrases.
  final String text;

  CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase({
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCode'] = languageCode;
    map['text'] = text;
    return map;
  }

  factory CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase.fromMap(
      Map<String, dynamic> map) {
    return CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase(
      languageCode: map['languageCode'] as String,
      text: map['text'] as String,
    );
  }
}
