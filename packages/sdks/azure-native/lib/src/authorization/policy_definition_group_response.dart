// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy definition group.
class PolicyDefinitionGroupResponse {
  /// A resource ID of a resource that contains additional metadata about the group.
  final pulumi.Input<String>? additionalMetadataId;
  /// The group's category.
  final pulumi.Input<String>? category;
  /// The group's description.
  final pulumi.Input<String>? description;
  /// The group's display name.
  final pulumi.Input<String>? displayName;
  /// The name of the group.
  final pulumi.Input<String> name;

  /// Creates a new [PolicyDefinitionGroupResponse].
  /// [additionalMetadataId] A resource ID of a resource that contains additional metadata about the group.
  /// [category] The group's category.
  /// [description] The group's description.
  /// [displayName] The group's display name.
  /// [name] The name of the group.
  PolicyDefinitionGroupResponse({
    this.additionalMetadataId,
    this.category,
    this.description,
    this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalMetadataId': ?additionalMetadataId,
      'category': ?category,
      'description': ?description,
      'displayName': ?displayName,
      'name': name,
    };
  }

  factory PolicyDefinitionGroupResponse.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionGroupResponse(
      additionalMetadataId: map['additionalMetadataId'] == null ? null : (map['additionalMetadataId']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

