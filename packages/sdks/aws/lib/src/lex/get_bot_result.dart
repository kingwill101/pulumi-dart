// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBot.
class GetBotResult {
  /// ARN of the bot.
  final String? arn;
  /// Checksum of the bot used to identify a specific revision of the bot's `$LATEST` version.
  final String? checksum;
  /// If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.
  final bool? childDirected;
  /// Date that the bot was created.
  final String? createdDate;
  /// Description of the bot.
  final String? description;
  /// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis.
  final bool? detectSentiment;
  /// Set to true if natural language understanding improvements are enabled.
  final bool? enableModelImprovements;
  /// If the `status` is `FAILED`, the reason why the bot failed to build.
  final String? failureReason;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.
  final int? idleSessionTtlInSeconds;
  /// Date that the bot was updated.
  final String? lastUpdatedDate;
  /// Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.
  final String? locale;
  /// Name of the bot, case sensitive.
  final String? name;
  /// The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot.
  final double? nluIntentConfidenceThreshold;
  final String? region;
  /// Status of the bot.
  final String? status;
  /// Version of the bot. For a new bot, the version is always `$LATEST`.
  final String? version;
  /// Amazon Polly voice ID that the Amazon Lex Bot uses for voice interactions with the user.
  final String? voiceId;

  /// Creates a new [GetBotResult].
  /// [arn] ARN of the bot.
  /// [checksum] Checksum of the bot used to identify a specific revision of the bot's `$LATEST` version.
  /// [childDirected] If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.
  /// [createdDate] Date that the bot was created.
  /// [description] Description of the bot.
  /// [detectSentiment] When set to true user utterances are sent to Amazon Comprehend for sentiment analysis.
  /// [enableModelImprovements] Set to true if natural language understanding improvements are enabled.
  /// [failureReason] If the `status` is `FAILED`, the reason why the bot failed to build.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleSessionTtlInSeconds] The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.
  /// [lastUpdatedDate] Date that the bot was updated.
  /// [locale] Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.
  /// [name] Name of the bot, case sensitive.
  /// [nluIntentConfidenceThreshold] The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot.
  /// [region] Optional.
  /// [status] Status of the bot.
  /// [version] Version of the bot. For a new bot, the version is always `$LATEST`.
  /// [voiceId] Amazon Polly voice ID that the Amazon Lex Bot uses for voice interactions with the user.
  const GetBotResult({
    this.arn,
    this.checksum,
    this.childDirected,
    this.createdDate,
    this.description,
    this.detectSentiment,
    this.enableModelImprovements,
    this.failureReason,
    this.id,
    this.idleSessionTtlInSeconds,
    this.lastUpdatedDate,
    this.locale,
    this.name,
    this.nluIntentConfidenceThreshold,
    this.region,
    this.status,
    this.version,
    this.voiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'checksum': ?checksum,
      'childDirected': ?childDirected,
      'createdDate': ?createdDate,
      'description': ?description,
      'detectSentiment': ?detectSentiment,
      'enableModelImprovements': ?enableModelImprovements,
      'failureReason': ?failureReason,
      'id': ?id,
      'idleSessionTtlInSeconds': ?idleSessionTtlInSeconds,
      'lastUpdatedDate': ?lastUpdatedDate,
      'locale': ?locale,
      'name': ?name,
      'nluIntentConfidenceThreshold': ?nluIntentConfidenceThreshold,
      'region': ?region,
      'status': ?status,
      'version': ?version,
      'voiceId': ?voiceId,
    };
  }

  factory GetBotResult.fromMap(Map<String, dynamic> map) {
    return GetBotResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return guardedValue as String; })(),
      childDirected: (() { final guardedValue = map['childDirected']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detectSentiment: (() { final guardedValue = map['detectSentiment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableModelImprovements: (() { final guardedValue = map['enableModelImprovements']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleSessionTtlInSeconds: (() { final guardedValue = map['idleSessionTtlInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nluIntentConfidenceThreshold: (() { final guardedValue = map['nluIntentConfidenceThreshold']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      voiceId: (() { final guardedValue = map['voiceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
