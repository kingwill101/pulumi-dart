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
    pulumi.Output<String>? arn,
    pulumi.Output<List<V2modelsBotDataPrivacy>>? dataPrivacies,
    pulumi.Output<String>? description,
    pulumi.Output<int>? idleSessionTtlInSeconds,
    pulumi.Output<List<V2modelsBotMember>>? members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<Map<String, String>>? testBotAliasTags,
    pulumi.Output<V2modelsBotTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataPrivacies = pulumi.Input.asOptionalInput<List<V2modelsBotDataPrivacy>>(dataPrivacies),
      description = pulumi.Input.asOptionalInput<String>(description),
      idleSessionTtlInSeconds = pulumi.Input.asOptionalInput<int>(idleSessionTtlInSeconds),
      members = pulumi.Input.asOptionalInput<List<V2modelsBotMember>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      testBotAliasTags = pulumi.Input.asOptionalInput<Map<String, String>>(testBotAliasTags),
      timeouts = pulumi.Input.asOptionalInput<V2modelsBotTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataPrivacies: map['dataPrivacies'] == null ? null : pulumi.Output.create<List<V2modelsBotDataPrivacy>>(pulumi.Input.decodeList<V2modelsBotDataPrivacy>(map['dataPrivacies'], (value) => V2modelsBotDataPrivacy.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      idleSessionTtlInSeconds: map['idleSessionTtlInSeconds'] == null ? null : pulumi.Output.create<int>(map['idleSessionTtlInSeconds'] as int),
      members: map['members'] == null ? null : pulumi.Output.create<List<V2modelsBotMember>>(pulumi.Input.decodeList<V2modelsBotMember>(map['members'], (value) => V2modelsBotMember.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      testBotAliasTags: map['testBotAliasTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['testBotAliasTags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<V2modelsBotTimeouts>(V2modelsBotTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

