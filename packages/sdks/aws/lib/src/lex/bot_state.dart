// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_abort_statement.dart';
import 'bot_clarification_prompt.dart';
import 'bot_intent.dart';

/// Input properties used for looking up and filtering Bot resources.
class BotState {
  /// The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
  final pulumi.Input<BotAbortStatement>? abortStatement;
  final pulumi.Input<String>? arn;
  /// Checksum identifying the version of the bot that was created. The checksum is not
  /// included as an argument because the resource will add it automatically when updating the bot.
  final pulumi.Input<String>? checksum;
  /// By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the [Amazon Lex FAQ](https://aws.amazon.com/lex/faqs#data-security) and the [Amazon Lex PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-childDirected).
  final pulumi.Input<bool>? childDirected;
  /// The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
  final pulumi.Input<BotClarificationPrompt>? clarificationPrompt;
  /// Determines if a new bot version is created when the initial resource is created and on each update. Defaults to `false`.
  final pulumi.Input<bool>? createVersion;
  /// The date when the bot version was created.
  final pulumi.Input<String>? createdDate;
  /// A description of the bot. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;
  /// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is `false`.
  final pulumi.Input<bool>? detectSentiment;
  /// Set to `true` to enable access to natural language understanding improvements. When you set the `enableModelImprovements` parameter to true you can use the `nluIntentConfidenceThreshold` parameter to configure confidence scores. For more information, see [Confidence Scores](https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html). You can only set the `enableModelImprovements` parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements).
  final pulumi.Input<bool>? enableModelImprovements;
  /// If status is FAILED, Amazon Lex provides the reason that it failed to build the bot.
  final pulumi.Input<String>? failureReason;
  /// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is `300`. Must be a number between 60 and 86400 (inclusive).
  final pulumi.Input<int>? idleSessionTtlInSeconds;
  /// A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
  final pulumi.Input<List<BotIntent>>? intents;
  /// The date when the $LATEST version of this bot was updated.
  final pulumi.Input<String>? lastUpdatedDate;
  /// Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-locale). Default is `en-US`.
  final pulumi.Input<String>? locale;
  /// The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length.
  final pulumi.Input<String>? name;
  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-nluIntentConfidenceThreshold) This value requires `enableModelImprovements` to be set to `true` and the default is `0`. Must be a float between 0 and 1.
  final pulumi.Input<double>? nluIntentConfidenceThreshold;
  /// If you set the `processBehavior` element to `BUILD`, Amazon Lex builds the bot so that it can be run. If you set the element to `SAVE` Amazon Lex saves the bot, but doesn't build it. Default is `SAVE`.
  final pulumi.Input<String>? processBehavior;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// When you send a request to create or update a bot, Amazon Lex sets the status response
  /// element to BUILDING. After Amazon Lex builds the bot, it sets status to READY. If Amazon Lex can't
  /// build the bot, it sets status to FAILED. Amazon Lex returns the reason for the failure in the
  /// failureReason response element.
  final pulumi.Input<String>? status;
  /// The version of the bot.
  final pulumi.Input<String>? version;
  /// The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the Amazon Polly Developer Guide.
  final pulumi.Input<String>? voiceId;

  /// Creates a new [BotState].
  /// [abortStatement] The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
  /// [arn] Optional.
  /// [checksum] Checksum identifying the version of the bot that was created. The checksum is not
  /// [childDirected] By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the [Amazon Lex FAQ](https://aws.amazon.com/lex/faqs#data-security) and the [Amazon Lex PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-childDirected).
  /// [clarificationPrompt] The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
  /// [createVersion] Determines if a new bot version is created when the initial resource is created and on each update. Defaults to `false`.
  /// [createdDate] The date when the bot version was created.
  /// [description] A description of the bot. Must be less than or equal to 200 characters in length.
  /// [detectSentiment] When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is `false`.
  /// [enableModelImprovements] Set to `true` to enable access to natural language understanding improvements. When you set the `enableModelImprovements` parameter to true you can use the `nluIntentConfidenceThreshold` parameter to configure confidence scores. For more information, see [Confidence Scores](https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html). You can only set the `enableModelImprovements` parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements).
  /// [failureReason] If status is FAILED, Amazon Lex provides the reason that it failed to build the bot.
  /// [idleSessionTtlInSeconds] The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is `300`. Must be a number between 60 and 86400 (inclusive).
  /// [intents] A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
  /// [lastUpdatedDate] The date when the $LATEST version of this bot was updated.
  /// [locale] Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-locale). Default is `en-US`.
  /// [name] The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length.
  /// [nluIntentConfidenceThreshold] Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-nluIntentConfidenceThreshold) This value requires `enableModelImprovements` to be set to `true` and the default is `0`. Must be a float between 0 and 1.
  /// [processBehavior] If you set the `processBehavior` element to `BUILD`, Amazon Lex builds the bot so that it can be run. If you set the element to `SAVE` Amazon Lex saves the bot, but doesn't build it. Default is `SAVE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] When you send a request to create or update a bot, Amazon Lex sets the status response
  /// [version] The version of the bot.
  /// [voiceId] The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the Amazon Polly Developer Guide.
  const BotState({
    this.abortStatement,
    this.arn,
    this.checksum,
    this.childDirected,
    this.clarificationPrompt,
    this.createVersion,
    this.createdDate,
    this.description,
    this.detectSentiment,
    this.enableModelImprovements,
    this.failureReason,
    this.idleSessionTtlInSeconds,
    this.intents,
    this.lastUpdatedDate,
    this.locale,
    this.name,
    this.nluIntentConfidenceThreshold,
    this.processBehavior,
    this.region,
    this.status,
    this.version,
    this.voiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortStatement': ?pulumi.Input.mapOptionalInputValue<BotAbortStatement, Map<String, dynamic>>(abortStatement, (value) => value.toMap()),
      'arn': ?arn,
      'checksum': ?checksum,
      'childDirected': ?childDirected,
      'clarificationPrompt': ?pulumi.Input.mapOptionalInputValue<BotClarificationPrompt, Map<String, dynamic>>(clarificationPrompt, (value) => value.toMap()),
      'createVersion': ?createVersion,
      'createdDate': ?createdDate,
      'description': ?description,
      'detectSentiment': ?detectSentiment,
      'enableModelImprovements': ?enableModelImprovements,
      'failureReason': ?failureReason,
      'idleSessionTtlInSeconds': ?idleSessionTtlInSeconds,
      'intents': ?pulumi.Input.mapOptionalInputValue<List<BotIntent>, List<Map<String, dynamic>>>(intents, (value) => pulumi.Input.encodeList<BotIntent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedDate': ?lastUpdatedDate,
      'locale': ?locale,
      'name': ?name,
      'nluIntentConfidenceThreshold': ?nluIntentConfidenceThreshold,
      'processBehavior': ?processBehavior,
      'region': ?region,
      'status': ?status,
      'version': ?version,
      'voiceId': ?voiceId,
    };
  }

  factory BotState.fromMap(Map<String, dynamic> map) {
    return BotState(
      abortStatement: (() { final guardedValue = map['abortStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BotAbortStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      childDirected: (() { final guardedValue = map['childDirected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clarificationPrompt: (() { final guardedValue = map['clarificationPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BotClarificationPrompt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createVersion: (() { final guardedValue = map['createVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectSentiment: (() { final guardedValue = map['detectSentiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableModelImprovements: (() { final guardedValue = map['enableModelImprovements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleSessionTtlInSeconds: (() { final guardedValue = map['idleSessionTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intents: (() { final guardedValue = map['intents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BotIntent>(guardedValue, (value) => BotIntent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nluIntentConfidenceThreshold: (() { final guardedValue = map['nluIntentConfidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      processBehavior: (() { final guardedValue = map['processBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceId: (() { final guardedValue = map['voiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
