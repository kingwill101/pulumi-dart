// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_bot_data_privacy/v2models_bot_data_privacy.dart';
import '../v2models_bot_member/v2models_bot_member.dart';
import '../v2models_bot_timeouts/v2models_bot_timeouts.dart';

/// The set of arguments for V2modelsBot.
class V2modelsBotArgs {
  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See `data_privacy`
  final pulumi.Input<List<V2modelsBotDataPrivacy>> dataPrivacies;

  /// Description of the bot. It appears in lists to help you identify a particular bot.
  final pulumi.Input<String>? description;

  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  final pulumi.Input<int> idleSessionTtlInSeconds;

  /// List of bot members in a network to be created. See `bot_members`.
  final pulumi.Input<List<V2modelsBotMember>>? members;

  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;

  /// List of tags to add to the bot. You can only add tags when you create a bot.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  final pulumi.Input<Map<String, String>>? testBotAliasTags;
  final pulumi.Input<V2modelsBotTimeouts>? timeouts;

  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  final pulumi.Input<String>? type;

  V2modelsBotArgs({
    required this.dataPrivacies,
    this.description,
    required this.idleSessionTtlInSeconds,
    this.members,
    this.name,
    this.region,
    required this.roleArn,
    this.tags,
    this.testBotAliasTags,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPrivacies'] = pulumi.Input.mapInputValue<
            List<V2modelsBotDataPrivacy>, List<Map<String, dynamic>>>(
        dataPrivacies,
        (value) => pulumi.Input.encodeList<V2modelsBotDataPrivacy,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['idleSessionTtlInSeconds'] = idleSessionTtlInSeconds;
    final membersValue = members;
    if (membersValue != null) {
      map['members'] = pulumi.Input.mapOptionalInputValue<
              List<V2modelsBotMember>, List<Map<String, dynamic>>>(
          membersValue,
          (value) =>
              pulumi.Input.encodeList<V2modelsBotMember, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final testBotAliasTagsValue = testBotAliasTags;
    if (testBotAliasTagsValue != null) {
      map['testBotAliasTags'] = testBotAliasTagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<V2modelsBotTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory V2modelsBotArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsBotArgs(
      dataPrivacies: pulumi.Input.asInput<List<V2modelsBotDataPrivacy>>(
          map['dataPrivacies']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      idleSessionTtlInSeconds:
          pulumi.Input.asInput<int>(map['idleSessionTtlInSeconds']),
      members:
          pulumi.Input.asOptionalInput<List<V2modelsBotMember>>(map['members']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      testBotAliasTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['testBotAliasTags']),
      timeouts:
          pulumi.Input.asOptionalInput<V2modelsBotTimeouts>(map['timeouts']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
