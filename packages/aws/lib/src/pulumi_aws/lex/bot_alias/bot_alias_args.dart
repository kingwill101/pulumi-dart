// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bot_alias_conversation_logs/bot_alias_conversation_logs.dart';

/// The set of arguments for BotAlias.
class BotAliasArgs {
  /// The name of the bot.
  final Input<String> botName;

  /// The version of the bot.
  final Input<String> botVersion;

  /// The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  final Input<BotAliasConversationLogs>? conversationLogs;

  /// A description of the alias. Must be less than or equal to 200 characters in length.
  final Input<String>? description;

  /// The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BotAliasArgs({
    required this.botName,
    required this.botVersion,
    this.conversationLogs,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['botName'] = botName;
    map['botVersion'] = botVersion;
    final conversationLogsValue = conversationLogs;
    if (conversationLogsValue != null) {
      map['conversationLogs'] = Input.mapOptionalInputValue<
              BotAliasConversationLogs, Map<String, dynamic>>(
          conversationLogsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BotAliasArgs.fromMap(Map<String, dynamic> map) {
    return BotAliasArgs(
      botName: Input.asInput<String>(map['botName']),
      botVersion: Input.asInput<String>(map['botVersion']),
      conversationLogs: Input.asOptionalInput<BotAliasConversationLogs>(
          map['conversationLogs']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
