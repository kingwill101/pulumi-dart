// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy definition group.
class PolicyDefinitionGroup {
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

  /// Creates a new [PolicyDefinitionGroup].
  /// [additionalMetadataId] A resource ID of a resource that contains additional metadata about the group.
  /// [category] The group's category.
  /// [description] The group's description.
  /// [displayName] The group's display name.
  /// [name] The name of the group.
  PolicyDefinitionGroup({
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

  factory PolicyDefinitionGroup.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionGroup(
      additionalMetadataId: (() {
        final guardedValue = map['additionalMetadataId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
