// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKey.
class GetKeyResult {
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

  GetKeyResult({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['customerId'] = customerId;
    map['description'] = description;
    map['enabled'] = enabled;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    map['value'] = value;
    return map;
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
