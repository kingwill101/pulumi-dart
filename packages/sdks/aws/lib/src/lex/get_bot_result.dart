// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBot.
class GetBotResult {
  /// ARN of the bot.
  final String arn;

  /// Checksum of the bot used to identify a specific revision of the bot's `$LATEST` version.
  final String checksum;

  /// If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.
  final bool childDirected;

  /// Date that the bot was created.
  final String createdDate;

  /// Description of the bot.
  final String description;

  /// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis.
  final bool detectSentiment;

  /// Set to true if natural language understanding improvements are enabled.
  final bool enableModelImprovements;

  /// If the `status` is `FAILED`, the reason why the bot failed to build.
  final String failureReason;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.
  final int idleSessionTtlInSeconds;

  /// Date that the bot was updated.
  final String lastUpdatedDate;

  /// Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.
  final String locale;

  /// Name of the bot, case sensitive.
  final String name;

  /// The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot.
  final double nluIntentConfidenceThreshold;
  final String region;

  /// Status of the bot.
  final String status;

  /// Version of the bot. For a new bot, the version is always `$LATEST`.
  final String? version;

  /// Amazon Polly voice ID that the Amazon Lex Bot uses for voice interactions with the user.
  final String voiceId;

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
  /// [region] Required.
  /// [status] Status of the bot.
  /// [version] Version of the bot. For a new bot, the version is always `$LATEST`.
  /// [voiceId] Amazon Polly voice ID that the Amazon Lex Bot uses for voice interactions with the user.
  GetBotResult({
    required this.arn,
    required this.checksum,
    required this.childDirected,
    required this.createdDate,
    required this.description,
    required this.detectSentiment,
    required this.enableModelImprovements,
    required this.failureReason,
    required this.id,
    required this.idleSessionTtlInSeconds,
    required this.lastUpdatedDate,
    required this.locale,
    required this.name,
    required this.nluIntentConfidenceThreshold,
    required this.region,
    required this.status,
    this.version,
    required this.voiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'checksum': checksum,
      'childDirected': childDirected,
      'createdDate': createdDate,
      'description': description,
      'detectSentiment': detectSentiment,
      'enableModelImprovements': enableModelImprovements,
      'failureReason': failureReason,
      'id': id,
      'idleSessionTtlInSeconds': idleSessionTtlInSeconds,
      'lastUpdatedDate': lastUpdatedDate,
      'locale': locale,
      'name': name,
      'nluIntentConfidenceThreshold': nluIntentConfidenceThreshold,
      'region': region,
      'status': status,
      'version': ?version,
      'voiceId': voiceId,
    };
  }

  factory GetBotResult.fromMap(Map<String, dynamic> map) {
    return GetBotResult(
      arn: map['arn'] as String,
      checksum: map['checksum'] as String,
      childDirected: map['childDirected'] as bool,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      detectSentiment: map['detectSentiment'] as bool,
      enableModelImprovements: map['enableModelImprovements'] as bool,
      failureReason: map['failureReason'] as String,
      id: map['id'] as String,
      idleSessionTtlInSeconds: map['idleSessionTtlInSeconds'] as int,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      locale: map['locale'] as String,
      name: map['name'] as String,
      nluIntentConfidenceThreshold:
          map['nluIntentConfidenceThreshold'] as double,
      region: map['region'] as String,
      status: map['status'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      voiceId: map['voiceId'] as String,
    );
  }
}
