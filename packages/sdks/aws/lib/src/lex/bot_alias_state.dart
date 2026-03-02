// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_alias_conversation_logs.dart';

/// Input properties used for looking up and filtering BotAlias resources.
class BotAliasState {
  /// The ARN of the bot alias.
  final pulumi.Input<String>? arn;
  /// The name of the bot.
  final pulumi.Input<String>? botName;
  /// The version of the bot.
  final pulumi.Input<String>? botVersion;
  /// Checksum of the bot alias.
  final pulumi.Input<String>? checksum;
  /// The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  final pulumi.Input<BotAliasConversationLogs>? conversationLogs;
  /// The date that the bot alias was created.
  final pulumi.Input<String>? createdDate;
  /// A description of the alias. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;
  /// The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  final pulumi.Input<String>? lastUpdatedDate;
  /// The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BotAliasState].
  /// [arn] The ARN of the bot alias.
  /// [botName] The name of the bot.
  /// [botVersion] The version of the bot.
  /// [checksum] Checksum of the bot alias.
  /// [conversationLogs] The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  /// [createdDate] The date that the bot alias was created.
  /// [description] A description of the alias. Must be less than or equal to 200 characters in length.
  /// [lastUpdatedDate] The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  /// [name] The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BotAliasState({
    this.arn,
    this.botName,
    this.botVersion,
    this.checksum,
    this.conversationLogs,
    this.createdDate,
    this.description,
    this.lastUpdatedDate,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'botName': ?botName,
      'botVersion': ?botVersion,
      'checksum': ?checksum,
      'conversationLogs': ?pulumi.Input.mapOptionalInputValue<BotAliasConversationLogs, Map<String, dynamic>>(conversationLogs, (value) => value.toMap()),
      'createdDate': ?createdDate,
      'description': ?description,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'region': ?region,
    };
  }

  factory BotAliasState.fromMap(Map<String, dynamic> map) {
    return BotAliasState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      botVersion: map['botVersion'] == null ? null : (map['botVersion'] as String).input(),
      checksum: map['checksum'] == null ? null : (map['checksum'] as String).input(),
      conversationLogs: map['conversationLogs'] == null ? null : (BotAliasConversationLogs.fromMap((map['conversationLogs'] as Map).cast<String, dynamic>())).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : (map['lastUpdatedDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

