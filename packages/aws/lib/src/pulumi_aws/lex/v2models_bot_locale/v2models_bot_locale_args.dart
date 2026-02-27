// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_bot_locale_timeouts/v2models_bot_locale_timeouts.dart';
import '../v2models_bot_locale_voice_settings/v2models_bot_locale_voice_settings.dart';

/// The set of arguments for V2modelsBotLocale.
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

  V2modelsBotLocaleArgs({
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
    final map = <String, dynamic>{};
    map['botId'] = botId;
    map['botVersion'] = botVersion;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['localeId'] = localeId;
    map['nLuIntentConfidenceThreshold'] = nLuIntentConfidenceThreshold;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          V2modelsBotLocaleTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final voiceSettingsValue = voiceSettings;
    if (voiceSettingsValue != null) {
      map['voiceSettings'] = pulumi.Input.mapOptionalInputValue<
          V2modelsBotLocaleVoiceSettings,
          Map<String, dynamic>>(voiceSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsBotLocaleArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsBotLocaleArgs(
      botId: pulumi.Input.asInput<String>(map['botId']),
      botVersion: pulumi.Input.asInput<String>(map['botVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      localeId: pulumi.Input.asInput<String>(map['localeId']),
      nLuIntentConfidenceThreshold:
          pulumi.Input.asInput<double>(map['nLuIntentConfidenceThreshold']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<V2modelsBotLocaleTimeouts>(
          map['timeouts']),
      voiceSettings:
          pulumi.Input.asOptionalInput<V2modelsBotLocaleVoiceSettings>(
              map['voiceSettings']),
    );
  }
}
