// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_bot_data_privacy.dart';
import 'v2models_bot_member.dart';
import 'v2models_bot_timeouts.dart';

/// Input properties used for looking up and filtering V2modelsBot resources.
class V2modelsBotState {
  final pulumi.Input<String>? arn;
  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See `data_privacy`
  final pulumi.Input<List<V2modelsBotDataPrivacy>>? dataPrivacies;
  /// Description of the bot. It appears in lists to help you identify a particular bot.
  final pulumi.Input<String>? description;
  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  final pulumi.Input<int>? idleSessionTtlInSeconds;
  /// List of bot members in a network to be created. See `bot_members`.
  final pulumi.Input<List<V2modelsBotMember>>? members;
  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleArn;
  /// List of tags to add to the bot. You can only add tags when you create a bot.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  final pulumi.Input<Map<String, String>>? testBotAliasTags;
  final pulumi.Input<V2modelsBotTimeouts>? timeouts;
  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  final pulumi.Input<String>? type;

  /// Creates a new [V2modelsBotState].
  /// [arn] Optional.
  /// [dataPrivacies] Provides information on additional privacy protections Amazon Lex should use with the bot's data. See `data_privacy`
  /// [description] Description of the bot. It appears in lists to help you identify a particular bot.
  /// [idleSessionTtlInSeconds] Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  /// [members] List of bot members in a network to be created. See `bot_members`.
  /// [name] Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that has permission to access the bot.
  /// [tags] List of tags to add to the bot. You can only add tags when you create a bot.
  /// [tagsAll] Optional.
  /// [testBotAliasTags] List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  /// [timeouts] Optional.
  /// [type] Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  V2modelsBotState({
    this.arn,
    this.dataPrivacies,
    this.description,
    this.idleSessionTtlInSeconds,
    this.members,
    this.name,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.testBotAliasTags,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataPrivacies': ?pulumi.Input.mapOptionalInputValue<List<V2modelsBotDataPrivacy>, List<Map<String, dynamic>>>(dataPrivacies, (value) => pulumi.Input.encodeList<V2modelsBotDataPrivacy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'idleSessionTtlInSeconds': ?idleSessionTtlInSeconds,
      'members': ?pulumi.Input.mapOptionalInputValue<List<V2modelsBotMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<V2modelsBotMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'testBotAliasTags': ?testBotAliasTags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsBotTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory V2modelsBotState.fromMap(Map<String, dynamic> map) {
    return V2modelsBotState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataPrivacies: (() { final guardedValue = map['dataPrivacies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsBotDataPrivacy>(guardedValue, (value) => V2modelsBotDataPrivacy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleSessionTtlInSeconds: (() { final guardedValue = map['idleSessionTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsBotMember>(guardedValue, (value) => V2modelsBotMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      testBotAliasTags: (() { final guardedValue = map['testBotAliasTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsBotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

