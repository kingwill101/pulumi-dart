import 'package:pulumi/pulumi.dart' as pulumi;
import '../bot_alias_conversation_logs/bot_alias_conversation_logs.dart';
import 'bot_alias_args.dart';

/// Provides an Amazon Lex Bot Alias resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import bot aliases using an ID with the format `bot_name:bot_alias_name`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/botAlias:BotAlias order_flowers_prod OrderFlowers:OrderFlowersProd
/// ```
class BotAlias extends pulumi.CustomResource {
  /// The ARN of the bot alias.
  late final pulumi.Output<String> arn;

  /// The name of the bot.
  late final pulumi.Output<String> botName;

  /// The version of the bot.
  late final pulumi.Output<String> botVersion;

  /// Checksum of the bot alias.
  late final pulumi.Output<String> checksum;

  /// The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  late final pulumi.Output<BotAliasConversationLogs?> conversationLogs;

  /// The date that the bot alias was created.
  late final pulumi.Output<String> createdDate;

  /// A description of the alias. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;

  /// The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  late final pulumi.Output<String> lastUpdatedDate;

  /// The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BotAlias(
    String name, {
    BotAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/botAlias:BotAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.botName = registerOutput<String>('botName');
    this.botVersion = registerOutput<String>('botVersion');
    this.checksum = registerOutput<String>('checksum');
    this.conversationLogs =
        registerOutput<BotAliasConversationLogs?>('conversationLogs');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
