// ignore_for_file: unused_element, unnecessary_cast


/// The policy definition group.
class PolicyDefinitionGroupResponse {
  /// A resource ID of a resource that contains additional metadata about the group.
  final String? additionalMetadataId;
  /// The group's category.
  final String? category;
  /// The group's description.
  final String? description;
  /// The group's display name.
  final String? displayName;
  /// The name of the group.
  final String name;

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
      additionalMetadataId: map['additionalMetadataId'] == null ? null : map['additionalMetadataId'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}

