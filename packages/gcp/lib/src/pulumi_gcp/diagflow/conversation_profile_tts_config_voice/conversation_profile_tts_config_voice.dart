// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileTtsConfigVoice {
  /// The name of the voice.
  final String? name;

  /// The preferred gender of the voice.
  /// Possible values are: `SSML_VOICE_GENDER_UNSPECIFIED`, `SSML_VOICE_GENDER_MALE`, `SSML_VOICE_GENDER_FEMALE`, `SSML_VOICE_GENDER_NEUTRAL`.
  final String? ssmlGender;

  ConversationProfileTtsConfigVoice({
    this.name,
    this.ssmlGender,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ssmlGenderValue = ssmlGender;
    if (ssmlGenderValue != null) {
      map['ssmlGender'] = ssmlGenderValue;
    }
    return map;
  }

  factory ConversationProfileTtsConfigVoice.fromMap(Map<String, dynamic> map) {
    return ConversationProfileTtsConfigVoice(
      name: map['name'] == null ? null : map['name'] as String,
      ssmlGender:
          map['ssmlGender'] == null ? null : map['ssmlGender'] as String,
    );
  }
}
