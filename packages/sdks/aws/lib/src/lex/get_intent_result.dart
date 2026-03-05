// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntent.
class GetIntentResult {
  /// ARN of the Lex intent.
  final String arn;
  /// Checksum identifying the version of the intent that was created. The checksum is not
  /// included as an argument because the resource will add it automatically when updating the intent.
  final String checksum;
  /// Date when the intent version was created.
  final String createdDate;
  /// Description of the intent.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Date when the $LATEST version of this intent was updated.
  final String lastUpdatedDate;
  /// Name of the intent, not case sensitive.
  final String name;
  /// A unique identifier for the built-in intent to base this
  /// intent on. To find the signature for an intent, see
  /// [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
  /// in the Alexa Skills Kit.
  final String parentIntentSignature;
  final String region;
  /// Version of the bot.
  final String? version;

  /// Creates a new [GetIntentResult].
  /// [arn] ARN of the Lex intent.
  /// [checksum] Checksum identifying the version of the intent that was created. The checksum is not
  /// [createdDate] Date when the intent version was created.
  /// [description] Description of the intent.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Date when the $LATEST version of this intent was updated.
  /// [name] Name of the intent, not case sensitive.
  /// [parentIntentSignature] A unique identifier for the built-in intent to base this
  /// [region] Required.
  /// [version] Version of the bot.
  GetIntentResult({
    required this.arn,
    required this.checksum,
    required this.createdDate,
    required this.description,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.parentIntentSignature,
    required this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'checksum': checksum,
      'createdDate': createdDate,
      'description': description,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'name': name,
      'parentIntentSignature': parentIntentSignature,
      'region': region,
      'version': ?version,
    };
  }

  factory GetIntentResult.fromMap(Map<String, dynamic> map) {
    return GetIntentResult(
      arn: map['arn'] as String,
      checksum: map['checksum'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      parentIntentSignature: map['parentIntentSignature'] as String,
      region: map['region'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

