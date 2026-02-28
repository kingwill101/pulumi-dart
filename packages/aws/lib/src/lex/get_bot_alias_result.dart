// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBotAlias.
class GetBotAliasResult {
  /// ARN of the bot alias.
  final String arn;

  /// Name of the bot.
  final String botName;

  /// Version of the bot that the alias points to.
  final String botVersion;

  /// Checksum of the bot alias.
  final String checksum;

  /// Date that the bot alias was created.
  final String createdDate;

  /// Description of the alias.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  final String lastUpdatedDate;

  /// Name of the alias. The name is not case sensitive.
  final String name;
  final String region;

  /// Creates a new [GetBotAliasResult].
  /// [arn] ARN of the bot alias.
  /// [botName] Name of the bot.
  /// [botVersion] Version of the bot that the alias points to.
  /// [checksum] Checksum of the bot alias.
  /// [createdDate] Date that the bot alias was created.
  /// [description] Description of the alias.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  /// [name] Name of the alias. The name is not case sensitive.
  /// [region] Required.
  GetBotAliasResult({
    required this.arn,
    required this.botName,
    required this.botVersion,
    required this.checksum,
    required this.createdDate,
    required this.description,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['botName'] = botName;
    map['botVersion'] = botVersion;
    map['checksum'] = checksum;
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetBotAliasResult.fromMap(Map<String, dynamic> map) {
    return GetBotAliasResult(
      arn: map['arn'] as String,
      botName: map['botName'] as String,
      botVersion: map['botVersion'] as String,
      checksum: map['checksum'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
