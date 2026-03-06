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
  const GetApiKeysItem({
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
      createdDate: pulumi.Input.fromValue(map['createdDate'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdatedDate: pulumi.Input.fromValue(map['lastUpdatedDate'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      stageKeys: pulumi.Input.fromValue((map['stageKeys'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

