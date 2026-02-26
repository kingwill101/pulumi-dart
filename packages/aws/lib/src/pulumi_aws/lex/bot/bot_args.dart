// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bot_abort_statement/bot_abort_statement.dart';
import '../bot_clarification_prompt/bot_clarification_prompt.dart';
import '../bot_intent/bot_intent.dart';

/// The set of arguments for Bot.
class BotArgs {
  /// The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
  final Input<BotAbortStatement> abortStatement;

  /// By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the [Amazon Lex FAQ](https://aws.amazon.com/lex/faqs#data-security) and the [Amazon Lex PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-childDirected).
  final Input<bool> childDirected;

  /// The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
  final Input<BotClarificationPrompt>? clarificationPrompt;

  /// Determines if a new bot version is created when the initial resource is created and on each update. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? createVersion;

  /// A description of the bot. Must be less than or equal to 200 characters in length.
  final Input<String>? description;

  /// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? detectSentiment;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to enable access to natural language understanding improvements. When you set the <span pulumi-lang-nodejs="`enableModelImprovements`" pulumi-lang-dotnet="`EnableModelImprovements`" pulumi-lang-go="`enableModelImprovements`" pulumi-lang-python="`enable_model_improvements`" pulumi-lang-yaml="`enableModelImprovements`" pulumi-lang-java="`enableModelImprovements`">`enable_model_improvements`</span> parameter to true you can use the <span pulumi-lang-nodejs="`nluIntentConfidenceThreshold`" pulumi-lang-dotnet="`NluIntentConfidenceThreshold`" pulumi-lang-go="`nluIntentConfidenceThreshold`" pulumi-lang-python="`nlu_intent_confidence_threshold`" pulumi-lang-yaml="`nluIntentConfidenceThreshold`" pulumi-lang-java="`nluIntentConfidenceThreshold`">`nlu_intent_confidence_threshold`</span> parameter to configure confidence scores. For more information, see [Confidence Scores](https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html). You can only set the <span pulumi-lang-nodejs="`enableModelImprovements`" pulumi-lang-dotnet="`EnableModelImprovements`" pulumi-lang-go="`enableModelImprovements`" pulumi-lang-python="`enable_model_improvements`" pulumi-lang-yaml="`enableModelImprovements`" pulumi-lang-java="`enableModelImprovements`">`enable_model_improvements`</span> parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements).
  final Input<bool>? enableModelImprovements;

  /// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>. Must be a number between 60 and 86400 (inclusive).
  final Input<int>? idleSessionTtlInSeconds;

  /// A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
  final Input<List<BotIntent>> intents;

  /// Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-locale). Default is `en-US`.
  final Input<String>? locale;

  /// The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length.
  final Input<String>? name;

  /// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see [Amazon Lex Bot PutBot API Docs](https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-nluIntentConfidenceThreshold) This value requires <span pulumi-lang-nodejs="`enableModelImprovements`" pulumi-lang-dotnet="`EnableModelImprovements`" pulumi-lang-go="`enableModelImprovements`" pulumi-lang-python="`enable_model_improvements`" pulumi-lang-yaml="`enableModelImprovements`" pulumi-lang-java="`enableModelImprovements`">`enable_model_improvements`</span> to be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and the default is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Must be a float between 0 and 1.
  final Input<double>? nluIntentConfidenceThreshold;

  /// If you set the <span pulumi-lang-nodejs="`processBehavior`" pulumi-lang-dotnet="`ProcessBehavior`" pulumi-lang-go="`processBehavior`" pulumi-lang-python="`process_behavior`" pulumi-lang-yaml="`processBehavior`" pulumi-lang-java="`processBehavior`">`process_behavior`</span> element to `BUILD`, Amazon Lex builds the bot so that it can be run. If you set the element to `SAVE` Amazon Lex saves the bot, but doesn't build it. Default is `SAVE`.
  final Input<String>? processBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see [Available Voices](http://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in the Amazon Polly Developer Guide.
  final Input<String>? voiceId;

  BotArgs({
    required this.abortStatement,
    required this.childDirected,
    this.clarificationPrompt,
    this.createVersion,
    this.description,
    this.detectSentiment,
    this.enableModelImprovements,
    this.idleSessionTtlInSeconds,
    required this.intents,
    this.locale,
    this.name,
    this.nluIntentConfidenceThreshold,
    this.processBehavior,
    this.region,
    this.voiceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abortStatement'] =
        Input.mapInputValue<BotAbortStatement, Map<String, dynamic>>(
            abortStatement, (value) => value.toMap());
    map['childDirected'] = childDirected;
    final clarificationPromptValue = clarificationPrompt;
    if (clarificationPromptValue != null) {
      map['clarificationPrompt'] = Input.mapOptionalInputValue<
              BotClarificationPrompt, Map<String, dynamic>>(
          clarificationPromptValue, (value) => value.toMap());
    }
    final createVersionValue = createVersion;
    if (createVersionValue != null) {
      map['createVersion'] = createVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final detectSentimentValue = detectSentiment;
    if (detectSentimentValue != null) {
      map['detectSentiment'] = detectSentimentValue;
    }
    final enableModelImprovementsValue = enableModelImprovements;
    if (enableModelImprovementsValue != null) {
      map['enableModelImprovements'] = enableModelImprovementsValue;
    }
    final idleSessionTtlInSecondsValue = idleSessionTtlInSeconds;
    if (idleSessionTtlInSecondsValue != null) {
      map['idleSessionTtlInSeconds'] = idleSessionTtlInSecondsValue;
    }
    map['intents'] =
        Input.mapInputValue<List<BotIntent>, List<Map<String, dynamic>>>(
            intents,
            (value) => Input.encodeList<BotIntent, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final localeValue = locale;
    if (localeValue != null) {
      map['locale'] = localeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nluIntentConfidenceThresholdValue = nluIntentConfidenceThreshold;
    if (nluIntentConfidenceThresholdValue != null) {
      map['nluIntentConfidenceThreshold'] = nluIntentConfidenceThresholdValue;
    }
    final processBehaviorValue = processBehavior;
    if (processBehaviorValue != null) {
      map['processBehavior'] = processBehaviorValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final voiceIdValue = voiceId;
    if (voiceIdValue != null) {
      map['voiceId'] = voiceIdValue;
    }
    return map;
  }

  factory BotArgs.fromMap(Map<String, dynamic> map) {
    return BotArgs(
      abortStatement: Input.asInput<BotAbortStatement>(map['abortStatement']),
      childDirected: Input.asInput<bool>(map['childDirected']),
      clarificationPrompt: Input.asOptionalInput<BotClarificationPrompt>(
          map['clarificationPrompt']),
      createVersion: Input.asOptionalInput<bool>(map['createVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      detectSentiment: Input.asOptionalInput<bool>(map['detectSentiment']),
      enableModelImprovements:
          Input.asOptionalInput<bool>(map['enableModelImprovements']),
      idleSessionTtlInSeconds:
          Input.asOptionalInput<int>(map['idleSessionTtlInSeconds']),
      intents: Input.asInput<List<BotIntent>>(map['intents']),
      locale: Input.asOptionalInput<String>(map['locale']),
      name: Input.asOptionalInput<String>(map['name']),
      nluIntentConfidenceThreshold:
          Input.asOptionalInput<double>(map['nluIntentConfidenceThreshold']),
      processBehavior: Input.asOptionalInput<String>(map['processBehavior']),
      region: Input.asOptionalInput<String>(map['region']),
      voiceId: Input.asOptionalInput<String>(map['voiceId']),
    );
  }
}
