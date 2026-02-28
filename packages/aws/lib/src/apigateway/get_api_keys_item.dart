// ignore_for_file: unused_element, unnecessary_cast

class GetApiKeysItem {
  /// Date and time when the API Key was created.
  final String createdDate;

  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final String customerId;

  /// Description of the API Key.
  final String description;

  /// Whether the API Key is enabled.
  final bool enabled;

  /// ID of the API Key.
  final String id;

  /// Date and time when the API Key was last updated.
  final String lastUpdatedDate;

  /// Name of the API Key.
  final String name;
  final List<String> stageKeys;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Value of the API Key.
  final String value;

  /// Creates a new [GetApiKeysItem].
  /// [createdDate] Date and time when the API Key was created.
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [description] Description of the API Key.
  /// [enabled] Whether the API Key is enabled.
  /// [id] ID of the API Key.
  /// [lastUpdatedDate] Date and time when the API Key was last updated.
  /// [name] Name of the API Key.
  /// [stageKeys] Required.
  /// [tags] Map of tags for the resource.
  /// [value] Value of the API Key.
  GetApiKeysItem({
    required this.createdDate,
    required this.customerId,
    required this.description,
    required this.enabled,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.stageKeys,
    required this.tags,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdDate'] = createdDate;
    map['customerId'] = customerId;
    map['description'] = description;
    map['enabled'] = enabled;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['name'] = name;
    map['stageKeys'] = stageKeys;
    map['tags'] = tags;
    map['value'] = value;
    return map;
  }

  factory GetApiKeysItem.fromMap(Map<String, dynamic> map) {
    return GetApiKeysItem(
      createdDate: map['createdDate'] as String,
      customerId: map['customerId'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      stageKeys: (map['stageKeys'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      value: map['value'] as String,
    );
  }
}
