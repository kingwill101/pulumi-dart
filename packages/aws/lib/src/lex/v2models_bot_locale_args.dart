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
  /// Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See `voice_settings`.
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
  /// [voiceSettings] Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See `voice_settings`.
  V2modelsBotLocaleArgs({
    required String botId,
    required String botVersion,
    String? description,
    required String localeId,
    required double nLuIntentConfidenceThreshold,
    String? name,
    String? region,
    V2modelsBotLocaleTimeouts? timeouts,
    V2modelsBotLocaleVoiceSettings? voiceSettings,
  }) :
      botId = pulumi.Input.asInput<String>(botId),
      botVersion = pulumi.Input.asInput<String>(botVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      localeId = pulumi.Input.asInput<String>(localeId),
      nLuIntentConfidenceThreshold = pulumi.Input.asInput<double>(nLuIntentConfidenceThreshold),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<V2modelsBotLocaleTimeouts>(timeouts),
      voiceSettings = pulumi.Input.asOptionalInput<V2modelsBotLocaleVoiceSettings>(voiceSettings);

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
      botId: map['botId'] as String,
      botVersion: map['botVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      localeId: map['localeId'] as String,
      nLuIntentConfidenceThreshold: map['nLuIntentConfidenceThreshold'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null ? null : V2modelsBotLocaleTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      voiceSettings: map['voiceSettings'] == null ? null : V2modelsBotLocaleVoiceSettings.fromMap((map['voiceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

