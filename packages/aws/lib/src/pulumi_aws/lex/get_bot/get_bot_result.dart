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

  /// If the <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> is `FAILED`, the reason why the bot failed to build.
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['checksum'] = checksum;
    map['childDirected'] = childDirected;
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['detectSentiment'] = detectSentiment;
    map['enableModelImprovements'] = enableModelImprovements;
    map['failureReason'] = failureReason;
    map['id'] = id;
    map['idleSessionTtlInSeconds'] = idleSessionTtlInSeconds;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['locale'] = locale;
    map['name'] = name;
    map['nluIntentConfidenceThreshold'] = nluIntentConfidenceThreshold;
    map['region'] = region;
    map['status'] = status;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    map['voiceId'] = voiceId;
    return map;
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
      version: map['version'] == null ? null : map['version'] as String,
      voiceId: map['voiceId'] as String,
    );
  }
}
