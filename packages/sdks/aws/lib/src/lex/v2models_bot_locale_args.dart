// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_bot_locale_timeouts.dart';
import 'v2models_bot_locale_voice_settings.dart';

/// {@template pulumi_lex_v2models_bot_locale_v2models_bot_locale_args_doc}
/// The set of arguments for V2modelsBotLocale.
/// {@endtemplate}
/// {@macro pulumi_lex_v2models_bot_locale_v2models_bot_locale_args_doc}
class V2modelsBotLocaleArgs {
  /// Identifier of the bot to create the locale for.
  final pulumi.Input<String> botId;
  /// Version of the bot to create the locale for. This can only be the draft version of the bot.
  final pulumi.Input<String> botVersion;
  /// Description of the bot locale. Use this to help identify the bot locale in lists.
  final pulumi.Input<String>? description;
  /// Identifier of the language and locale that the bot will be used in. The string must match one of the supported locales. All of the intents, slot types, and slots used in the bot must have the same locale. For more information, see Supported languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)
  final pulumi.Input<String> localeId;
  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents.
  ///
  /// The following arguments are optional:
  final pulumi.Input<double> nLuIntentConfidenceThreshold;
  /// Specified locale name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<V2modelsBotLocaleTimeouts>? timeouts;
  /// Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See `voiceSettings`.
  final pulumi.Input<V2modelsBotLocaleVoiceSettings>? voiceSettings;

  /// Creates a new [V2modelsBotLocaleArgs].
  /// [botId] Identifier of the bot to create the locale for.
  /// [botVersion] Version of the bot to create the locale for. This can only be the draft version of the bot.
  /// [description] Description of the bot locale. Use this to help identify the bot locale in lists.
  /// [localeId] Identifier of the language and locale that the bot will be used in. The string must match one of the supported locales. All of the intents, slot types, and slots used in the bot must have the same locale. For more information, see Supported languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)
  /// [nLuIntentConfidenceThreshold] Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents.
  /// [name] Specified locale name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [voiceSettings] Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See `voiceSettings`.
  const V2modelsBotLocaleArgs({
    required this.botId,
    required this.botVersion,
    this.description,
    required this.localeId,
    required this.nLuIntentConfidenceThreshold,
    this.name,
    this.region,
    this.timeouts,
    this.voiceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': botId,
      'botVersion': botVersion,
      'description': ?description,
      'localeId': localeId,
      'nLuIntentConfidenceThreshold': nLuIntentConfidenceThreshold,
      'name': ?name,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsBotLocaleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'voiceSettings': ?pulumi.Input.mapOptionalInputValue<V2modelsBotLocaleVoiceSettings, Map<String, dynamic>>(voiceSettings, (value) => value.toMap()),
    };
  }

  factory V2modelsBotLocaleArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsBotLocaleArgs(
      botId: pulumi.Input.fromValue(map['botId'] as String),
      botVersion: pulumi.Input.fromValue(map['botVersion'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localeId: pulumi.Input.fromValue(map['localeId'] as String),
      nLuIntentConfidenceThreshold: pulumi.Input.fromValue(map['nLuIntentConfidenceThreshold'] as double),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsBotLocaleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voiceSettings: (() { final guardedValue = map['voiceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsBotLocaleVoiceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
