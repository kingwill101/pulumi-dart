// ignore_for_file: unused_element, unnecessary_cast

class V2modelsBotLocaleVoiceSettings {
  /// Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. Valid values are <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> and <span pulumi-lang-nodejs="`neural`" pulumi-lang-dotnet="`Neural`" pulumi-lang-go="`neural`" pulumi-lang-python="`neural`" pulumi-lang-yaml="`neural`" pulumi-lang-java="`neural`">`neural`</span>. If not specified, the default is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final String? engine;

  /// Identifier of the Amazon Polly voice to use.
  final String voiceId;

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
