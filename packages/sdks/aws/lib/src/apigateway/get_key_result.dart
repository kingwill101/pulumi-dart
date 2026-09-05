// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// ARN of the API Key.
  final String? arn;
  /// Date and time when the API Key was created.
  final String? createdDate;
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final String? customerId;
  /// Description of the API Key.
  final String? description;
  /// Whether the API Key is enabled.
  final bool? enabled;
  /// Set to the ID of the API Key.
  final String? id;
  /// Date and time when the API Key was last updated.
  final String? lastUpdatedDate;
  /// Set to the name of the API Key.
  final String? name;
  final String? region;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// Set to the value of the API Key.
  final String? value;

  /// Creates a new [GetKeyResult].
  /// [arn] ARN of the API Key.
  /// [createdDate] Date and time when the API Key was created.
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [description] Description of the API Key.
  /// [enabled] Whether the API Key is enabled.
  /// [id] Set to the ID of the API Key.
  /// [lastUpdatedDate] Date and time when the API Key was last updated.
  /// [name] Set to the name of the API Key.
  /// [region] Optional.
  /// [tags] Map of tags for the resource.
  /// [value] Set to the value of the API Key.
  const GetKeyResult({
    this.arn,
    this.createdDate,
    this.customerId,
    this.description,
    this.enabled,
    this.id,
    this.lastUpdatedDate,
    this.name,
    this.region,
    this.tags,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'customerId': ?customerId,
      'description': ?description,
      'enabled': ?enabled,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
