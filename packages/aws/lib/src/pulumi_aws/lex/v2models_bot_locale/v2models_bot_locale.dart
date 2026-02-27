import 'package:pulumi/pulumi.dart';
import '../v2models_bot_locale_timeouts/v2models_bot_locale_timeouts.dart';
import '../v2models_bot_locale_voice_settings/v2models_bot_locale_voice_settings.dart';
import 'v2models_bot_locale_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot Locale.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Voice Settings
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot Locale using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBotLocale:V2modelsBotLocale example en_US,abcd-12345678,1
/// ```
class V2modelsBotLocale extends CustomResource {
  /// Identifier of the bot to create the locale for.
  late final Output<String> botId;

  /// Version of the bot to create the locale for. This can only be the draft version of the bot.
  late final Output<String> botVersion;

  /// Description of the bot locale. Use this to help identify the bot locale in lists.
  late final Output<String?> description;

  /// Identifier of the language and locale that the bot will be used in. The string must match one of the supported locales. All of the intents, slot types, and slots used in the bot must have the same locale. For more information, see Supported languages (https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)
  late final Output<String> localeId;

  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents.
  ///
  /// The following arguments are optional:
  late final Output<double> nLuIntentConfidenceThreshold;

  /// Specified locale name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<V2modelsBotLocaleTimeouts?> timeouts;

  /// Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. See `voice_settings`.
  late final Output<V2modelsBotLocaleVoiceSettings?> voiceSettings;

  V2modelsBotLocale(
    String name, {
    V2modelsBotLocaleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBotLocale:V2modelsBotLocale',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.description = registerOutput<String?>('description');
    this.localeId = registerOutput<String>('localeId');
    this.nLuIntentConfidenceThreshold =
        registerOutput<double>('nLuIntentConfidenceThreshold');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<V2modelsBotLocaleTimeouts?>('timeouts');
    this.voiceSettings =
        registerOutput<V2modelsBotLocaleVoiceSettings?>('voiceSettings');
  }
}
