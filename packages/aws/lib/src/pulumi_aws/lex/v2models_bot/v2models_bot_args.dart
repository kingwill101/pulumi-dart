// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_bot_data_privacy/v2models_bot_data_privacy.dart';
import '../v2models_bot_member/v2models_bot_member.dart';
import '../v2models_bot_timeouts/v2models_bot_timeouts.dart';

/// The set of arguments for V2modelsBot.
class V2modelsBotArgs {
  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See <span pulumi-lang-nodejs="`dataPrivacy`" pulumi-lang-dotnet="`DataPrivacy`" pulumi-lang-go="`dataPrivacy`" pulumi-lang-python="`data_privacy`" pulumi-lang-yaml="`dataPrivacy`" pulumi-lang-java="`dataPrivacy`">`data_privacy`</span>
  final Input<List<V2modelsBotDataPrivacy>> dataPrivacies;

  /// Description of the bot. It appears in lists to help you identify a particular bot.
  final Input<String>? description;

  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  final Input<int> idleSessionTtlInSeconds;

  /// List of bot members in a network to be created. See <span pulumi-lang-nodejs="`botMembers`" pulumi-lang-dotnet="`BotMembers`" pulumi-lang-go="`botMembers`" pulumi-lang-python="`bot_members`" pulumi-lang-yaml="`botMembers`" pulumi-lang-java="`botMembers`">`bot_members`</span>.
  final Input<List<V2modelsBotMember>>? members;

  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  final Input<String> roleArn;

  /// List of tags to add to the bot. You can only add tags when you create a bot.
  final Input<Map<String, String>>? tags;

  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  final Input<Map<String, String>>? testBotAliasTags;
  final Input<V2modelsBotTimeouts>? timeouts;

  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  final Input<String>? type;

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
    map['dataPrivacies'] = Input.mapInputValue<List<V2modelsBotDataPrivacy>,
            List<Map<String, dynamic>>>(
        dataPrivacies,
        (value) =>
            Input.encodeList<V2modelsBotDataPrivacy, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['idleSessionTtlInSeconds'] = idleSessionTtlInSeconds;
    final membersValue = members;
    if (membersValue != null) {
      map['members'] = Input.mapOptionalInputValue<List<V2modelsBotMember>,
              List<Map<String, dynamic>>>(
          membersValue,
          (value) => Input.encodeList<V2modelsBotMember, Map<String, dynamic>>(
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
      map['timeouts'] = Input.mapOptionalInputValue<V2modelsBotTimeouts,
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
      dataPrivacies:
          Input.asInput<List<V2modelsBotDataPrivacy>>(map['dataPrivacies']),
      description: Input.asOptionalInput<String>(map['description']),
      idleSessionTtlInSeconds:
          Input.asInput<int>(map['idleSessionTtlInSeconds']),
      members: Input.asOptionalInput<List<V2modelsBotMember>>(map['members']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      testBotAliasTags:
          Input.asOptionalInput<Map<String, String>>(map['testBotAliasTags']),
      timeouts: Input.asOptionalInput<V2modelsBotTimeouts>(map['timeouts']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
