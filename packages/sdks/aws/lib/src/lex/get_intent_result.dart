// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntent.
class GetIntentResult {
  /// ARN of the Lex intent.
  final String? arn;
  /// Checksum identifying the version of the intent that was created. The checksum is not
  /// included as an argument because the resource will add it automatically when updating the intent.
  final String? checksum;
  /// Date when the intent version was created.
  final String? createdDate;
  /// Description of the intent.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date when the $LATEST version of this intent was updated.
  final String? lastUpdatedDate;
  /// Name of the intent, not case sensitive.
  final String? name;
  /// A unique identifier for the built-in intent to base this
  /// intent on. To find the signature for an intent, see
  /// [Standard Built-in Intents](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents)
  /// in the Alexa Skills Kit.
  final String? parentIntentSignature;
  final String? region;
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
  /// [region] Optional.
  /// [version] Version of the bot.
  const GetIntentResult({
    this.arn,
    this.checksum,
    this.createdDate,
    this.description,
    this.id,
    this.lastUpdatedDate,
    this.name,
    this.parentIntentSignature,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'checksum': ?checksum,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'parentIntentSignature': ?parentIntentSignature,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetIntentResult.fromMap(Map<String, dynamic> map) {
    return GetIntentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentIntentSignature: (() { final guardedValue = map['parentIntentSignature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
