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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? botName,
    pulumi.Output<String>? botVersion,
    pulumi.Output<String>? checksum,
    pulumi.Output<BotAliasConversationLogs>? conversationLogs,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastUpdatedDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      botName = pulumi.Input.asOptionalInput<String>(botName),
      botVersion = pulumi.Input.asOptionalInput<String>(botVersion),
      checksum = pulumi.Input.asOptionalInput<String>(checksum),
      conversationLogs = pulumi.Input.asOptionalInput<BotAliasConversationLogs>(conversationLogs),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastUpdatedDate = pulumi.Input.asOptionalInput<String>(lastUpdatedDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      botVersion: map['botVersion'] == null ? null : pulumi.Output.create<String>(map['botVersion'] as String),
      checksum: map['checksum'] == null ? null : pulumi.Output.create<String>(map['checksum'] as String),
      conversationLogs: map['conversationLogs'] == null ? null : pulumi.Output.create<BotAliasConversationLogs>(BotAliasConversationLogs.fromMap((map['conversationLogs'] as Map).cast<String, dynamic>())),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

