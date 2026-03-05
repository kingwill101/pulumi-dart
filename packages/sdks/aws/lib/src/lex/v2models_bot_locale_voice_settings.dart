// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsBotLocaleVoiceSettings {
  /// Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. Valid values are `standard` and `neural`. If not specified, the default is `standard`.
  final pulumi.Input<String>? engine;
  /// Identifier of the Amazon Polly voice to use.
  final pulumi.Input<String> voiceId;

  /// Creates a new [V2modelsBotLocaleVoiceSettings].
  /// [engine] Indicates the type of Amazon Polly voice that Amazon Lex should use for voice interaction with the user. Valid values are `standard` and `neural`. If not specified, the default is `standard`.
  /// [voiceId] Identifier of the Amazon Polly voice to use.
  V2modelsBotLocaleVoiceSettings({
    this.engine,
    required this.voiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'voiceId': voiceId,
    };
  }

  factory V2modelsBotLocaleVoiceSettings.fromMap(Map<String, dynamic> map) {
    return V2modelsBotLocaleVoiceSettings(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceId: pulumi.Input.fromValue(map['voiceId'] as String),
    );
  }
}

