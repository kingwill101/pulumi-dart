// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_alias_conversation_logs.dart';

/// {@template pulumi_lex_bot_alias_bot_alias_args_doc}
/// The set of arguments for BotAlias.
/// {@endtemplate}
/// {@macro pulumi_lex_bot_alias_bot_alias_args_doc}
class BotAliasArgs {
  /// The name of the bot.
  final pulumi.Input<String> botName;
  /// The version of the bot.
  final pulumi.Input<String> botVersion;
  /// The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  final pulumi.Input<BotAliasConversationLogs>? conversationLogs;
  /// A description of the alias. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;
  /// The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BotAliasArgs].
  /// [botName] The name of the bot.
  /// [botVersion] The version of the bot.
  /// [conversationLogs] The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  /// [description] A description of the alias. Must be less than or equal to 200 characters in length.
  /// [name] The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BotAliasArgs({
    required this.botName,
    required this.botVersion,
    this.conversationLogs,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'botVersion': botVersion,
      'conversationLogs': ?pulumi.Input.mapOptionalInputValue<BotAliasConversationLogs, Map<String, dynamic>>(conversationLogs, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory BotAliasArgs.fromMap(Map<String, dynamic> map) {
    return BotAliasArgs(
      botName: (map['botName'] as String).input(),
      botVersion: (map['botVersion'] as String).input(),
      conversationLogs: map['conversationLogs'] == null ? null : ((BotAliasConversationLogs.fromMap((map['conversationLogs']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

