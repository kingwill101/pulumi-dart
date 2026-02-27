import 'package:pulumi/pulumi.dart';
import '../v2models_bot_data_privacy/v2models_bot_data_privacy.dart';
import '../v2models_bot_member/v2models_bot_member.dart';
import '../v2models_bot_timeouts/v2models_bot_timeouts.dart';
import 'v2models_bot_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBot:V2modelsBot example bot-id-12345678
/// ```
class V2modelsBot extends CustomResource {
  late final Output<String> arn;

  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See `data_privacy`
  late final Output<List<V2modelsBotDataPrivacy>> dataPrivacies;

  /// Description of the bot. It appears in lists to help you identify a particular bot.
  late final Output<String?> description;

  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  late final Output<int> idleSessionTtlInSeconds;

  /// List of bot members in a network to be created. See `bot_members`.
  late final Output<List<V2modelsBotMember>?> members;

  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  late final Output<String> roleArn;

  /// List of tags to add to the bot. You can only add tags when you create a bot.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  late final Output<Map<String, String>?> testBotAliasTags;
  late final Output<V2modelsBotTimeouts?> timeouts;

  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  late final Output<String> type;

  V2modelsBot(
    String name, {
    V2modelsBotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBot:V2modelsBot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataPrivacies =
        registerOutput<List<V2modelsBotDataPrivacy>>('dataPrivacies');
    this.description = registerOutput<String?>('description');
    this.idleSessionTtlInSeconds =
        registerOutput<int>('idleSessionTtlInSeconds');
    this.members = registerOutput<List<V2modelsBotMember>?>('members');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.testBotAliasTags =
        registerOutput<Map<String, String>?>('testBotAliasTags');
    this.timeouts = registerOutput<V2modelsBotTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
