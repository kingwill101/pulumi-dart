// ignore_for_file: unused_element, unnecessary_cast

class V2modelsBotLocaleVoiceSettings {
  /// Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. Valid values are `standard` and `neural`. If not specified, the default is `standard`.
  final String? engine;

  /// Identifier of the Amazon Polly voice to use.
  final String voiceId;

  /// Creates a new [V2modelsBotLocaleVoiceSettings].
  /// [engine] Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. Valid values are `standard` and `neural`. If not specified, the default is `standard`.
  /// [voiceId] Identifier of the Amazon Polly voice to use.
  V2modelsBotLocaleVoiceSettings({
    this.engine,
    required this.voiceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['voiceId'] = voiceId;
    return map;
  }

  factory V2modelsBotLocaleVoiceSettings.fromMap(Map<String, dynamic> map) {
    return V2modelsBotLocaleVoiceSettings(
      engine: map['engine'] == null ? null : map['engine'] as String,
      voiceId: map['voiceId'] as String,
    );
  }
}
