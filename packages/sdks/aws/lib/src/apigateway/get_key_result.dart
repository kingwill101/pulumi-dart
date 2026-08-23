// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// ARN of the API Key.
  final String arn;
  /// Date and time when the API Key was created.
  final String createdDate;
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final String customerId;
  /// Description of the API Key.
  final String description;
  /// Whether the API Key is enabled.
  final bool enabled;
  /// Set to the ID of the API Key.
  final String id;
  /// Date and time when the API Key was last updated.
  final String lastUpdatedDate;
  /// Set to the name of the API Key.
  final String name;
  final String region;
  /// Map of tags for the resource.
  final Map<String, String> tags;
  /// Set to the value of the API Key.
  final String value;

  /// Creates a new [GetKeyResult].
  /// [arn] ARN of the API Key.
  /// [createdDate] Date and time when the API Key was created.
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [description] Description of the API Key.
  /// [enabled] Whether the API Key is enabled.
  /// [id] Set to the ID of the API Key.
  /// [lastUpdatedDate] Date and time when the API Key was last updated.
  /// [name] Set to the name of the API Key.
  /// [region] Required.
  /// [tags] Map of tags for the resource.
  /// [value] Set to the value of the API Key.
  const GetKeyResult({
    required this.arn,
    required this.createdDate,
    required this.customerId,
    required this.description,
    required this.enabled,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.region,
    required this.tags,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'customerId': customerId,
      'description': description,
      'enabled': enabled,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'name': name,
      'region': region,
      'tags': tags,
      'value': value,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      customerId: map['customerId'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      value: map['value'] as String,
    );
  }
}
