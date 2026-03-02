// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiKeysItem {
  /// Date and time when the API Key was created.
  final pulumi.Input<String> createdDate;
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final pulumi.Input<String> customerId;
  /// Description of the API Key.
  final pulumi.Input<String> description;
  /// Whether the API Key is enabled.
  final pulumi.Input<bool> enabled;
  /// ID of the API Key.
  final pulumi.Input<String> id;
  /// Date and time when the API Key was last updated.
  final pulumi.Input<String> lastUpdatedDate;
  /// Name of the API Key.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> stageKeys;
  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Value of the API Key.
  final pulumi.Input<String> value;

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
    return <String, dynamic>{
      'createdDate': createdDate,
      'customerId': customerId,
      'description': description,
      'enabled': enabled,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'name': name,
      'stageKeys': stageKeys,
      'tags': tags,
      'value': value,
    };
  }

  factory GetApiKeysItem.fromMap(Map<String, dynamic> map) {
    return GetApiKeysItem(
      createdDate: (map['createdDate'] as String).input(),
      customerId: (map['customerId'] as String).input(),
      description: (map['description'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      id: (map['id'] as String).input(),
      lastUpdatedDate: (map['lastUpdatedDate'] as String).input(),
      name: (map['name'] as String).input(),
      stageKeys: ((map['stageKeys'] as List).cast<String>()).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      value: (map['value'] as String).input(),
    );
  }
}

