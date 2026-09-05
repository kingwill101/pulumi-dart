// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBotAlias.
class GetBotAliasResult {
  /// ARN of the bot alias.
  final String? arn;
  /// Name of the bot.
  final String? botName;
  /// Version of the bot that the alias points to.
  final String? botVersion;
  /// Checksum of the bot alias.
  final String? checksum;
  /// Date that the bot alias was created.
  final String? createdDate;
  /// Description of the alias.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  final String? lastUpdatedDate;
  /// Name of the alias. The name is not case sensitive.
  final String? name;
  final String? region;

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
  /// [region] Optional.
  const GetBotAliasResult({
    this.arn,
    this.botName,
    this.botVersion,
    this.checksum,
    this.createdDate,
    this.description,
    this.id,
    this.lastUpdatedDate,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'botName': ?botName,
      'botVersion': ?botVersion,
      'checksum': ?checksum,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetBotAliasResult.fromMap(Map<String, dynamic> map) {
    return GetBotAliasResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      botVersion: (() { final guardedValue = map['botVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
